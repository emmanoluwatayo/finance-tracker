// ignore_for_file: avoid_types_as_parameter_names, dead_code

import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb_auth;
import 'package:personal_finance_tracker/domain/main_function/i_finance_tracker_facade.dart';
import 'package:personal_finance_tracker/domain/model/custom_error/custom_error.dart';
import 'package:rxdart/rxdart.dart';

/// Firebase AuthFacade Implementation of [IFinanceTrackerFacade]
@LazySingleton(as: IFinanceTrackerFacade)
class FinanceTrackerFacade extends IFinanceTrackerFacade {
  final fb_auth.FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  final FirebaseFirestore firestore;

  FinanceTrackerFacade({
    required this.firebaseAuth,
    required this.googleSignIn,
    required this.firestore,
  });

  /// Map exceptions to CustomError
  CustomError mapToCustomError(Object error) {
    if (error is FirebaseAuthException) {
      return CustomError(
        errorMsg: "Authentication error occurred: ${error.message}",
        code: error.code,
        plugin: error.plugin,
      );
    } else if (error is FirebaseException) {
      return CustomError(
        errorMsg: "Firebase error occurred: ${error.message}",
        code: error.code,
        plugin: error.plugin,
      );
    } else {
      return CustomError(
        plugin: "An unexpected error occurred: $error",
        errorMsg: "An unexpected error occurred: $error",
        code: "unexpected_error",
      );
    }
  }

  /// Add Income Transaction
  @override
  Future<void> addIncome({
    required double amount,
  }) async {
    String userId = firebaseAuth.currentUser!.uid;

    try {
      await firestore
          .collection('users')
          .doc(userId)
          .collection('transactions')
          .add({
        'type': 'income',
        'amount': amount,
        'month': DateTime.now().month,
        'year': DateTime.now().year,
        'timestamp': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw mapToCustomError(e);
    }
  }

  /// Add Expense Transaction
  @override
  Future<void> addExpenses({
    required double amount,
    required String category,
    required String description,
  }) async {
    String userId = firebaseAuth.currentUser!.uid;

    try {
      await firestore
          .collection('users')
          .doc(userId)
          .collection('transactions')
          .add({
        'type': 'expense',
        'category': category,
        'amount': amount,
        'description': description,
        'timestamp': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw mapToCustomError(e);
    }
  }

  /// Add Budget
  @override
  Future<void> addBudget({
    required double amount,
    required String categoryType,
  }) async {
    String userId = firebaseAuth.currentUser!.uid;

    try {
      await firestore
          .collection('users')
          .doc(userId)
          .collection('budgets')
          .doc(categoryType)
          .set({
        'amount': amount,
        'timestamp': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw mapToCustomError(e);
    }
  }

  /// Fetch Incomes Stream
  @override
  Stream<List<Map<String, dynamic>>> fetchIncomes() {
    String userId = firebaseAuth.currentUser!.uid;

    return firestore
        .collection('users')
        .doc(userId)
        .collection('transactions')
        .where('type', isEqualTo: 'income')
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return {
          'timestamp': doc['timestamp'],
          'amount': doc['amount'],
        };
      }).toList();
    });
  }

  /// Fetch Expenses Stream
  @override
  Stream<List<Map<String, dynamic>>> fetchExpenses() {
    String userId = firebaseAuth.currentUser!.uid;

    return firestore
        .collection('users')
        .doc(userId)
        .collection('transactions')
        .where('type', isEqualTo: 'expense')
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return {
          'timestamp': doc['timestamp'],
          'category': doc['category'],
          'amount': doc['amount'],
        };
      }).toList();
    });
  }

  /// Fetch Budgets Stream
  @override
  Stream<List<Map<String, dynamic>>> fetchBudgets() {
    String userId = firebaseAuth.currentUser!.uid;

    return firestore
        .collection('users')
        .doc(userId)
        .collection('budgets')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return {
          'category': doc.id,
          'amount': doc['amount'],
          'timestamp': doc['timestamp'],
        };
      }).toList();
    });
  }

  /// Fetch Transactions Stream
  @override
  Stream<List<Map<String, dynamic>>> fetchTransactions() {
    String userId = firebaseAuth.currentUser!.uid;

    return firestore
        .collection('users')
        .doc(userId)
        .collection('transactions')
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => doc.data()).toList();
    });
  }

  /// Fetch Finance Summary Stream
  @override
  Stream<Map<String, dynamic>> fetchFinanceSummary() {
    final transactionsStream = fetchTransactions();
    final budgetsStream = fetchBudgets();

    return Rx.combineLatest2(
      transactionsStream,
      budgetsStream,
      (List<Map<String, dynamic>> transactions,
          List<Map<String, dynamic>> budgets) {
        double totalIncome = 0;
        double totalExpenses = 0;
        Map<String, double> remainingBudgets = {};

        for (var transaction in transactions) {
          if (transaction['type'] == 'income') {
            totalIncome += (transaction['amount'] as num).toDouble();
          } else if (transaction['type'] == 'expense') {
            totalExpenses += (transaction['amount'] as num).toDouble();
          }
        }

        for (var budget in budgets) {
          final category = budget['category'];
          final amount = (budget['amount'] as num).toDouble();
          final spent = transactions
              .where((t) =>
                  t['category'] == category && t['type'] == 'expense')
              .fold(0.0, (sum, t) => sum + (t['amount'] as num).toDouble());
          remainingBudgets[category] = amount - spent;
        }

        return {
          'totalIncome': totalIncome,
          'totalExpenses': totalExpenses,
          'currentBalance': totalIncome - totalExpenses,
          'remainingBudgets': remainingBudgets,
        };
      },
    );
  }

  @override
  Stream<List<Map<String, dynamic>>> fetchSpendingCategories() async* {
    String userId = firebaseAuth.currentUser!.uid;

    Stream<List<Map<String, dynamic>>> transactionsStream = fetchTransactions();
    Stream<List<Map<String, dynamic>>> budgetsStream = firestore
        .collection('users')
        .doc(userId)
        .collection('budgets')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return {
          'category': doc.id,
          ...doc.data(),
        };
      }).toList();
    });

    await for (final budgets in budgetsStream) {
      await for (final transactions in transactionsStream) {
        List<Map<String, dynamic>> categories = [];

        for (var budget in budgets) {
          String category = budget['category'];
          double budgetAmount = (budget['amount'] as num).toDouble();

          // Calculate total spent for this category
          double totalSpent = transactions
              .where((t) => t['type'] == 'expense' && t['category'] == category)
              .fold(0.0, (sum, t) => sum + (t['amount'] as num).toDouble());

          // Calculate amount remaining
          double amountRemaining =
              (budgetAmount - totalSpent).clamp(0.0, budgetAmount);

          categories.add({
            'category': category,
            'budgetAmount': budgetAmount,
            'totalSpent': totalSpent,
            'amountRemaining': amountRemaining, // Added field
            'progress': (totalSpent / budgetAmount)
                .clamp(0.0, 1.0), // Progress for linear bar
          });
        }

        yield categories;

        if (kDebugMode) {
          print("User categories: $categories");
        }
      }
    }
  }

  @override
  Stream<List<Map<String, dynamic>>> fetchMonthlyIncomeExpense() {
    return FirebaseFirestore.instance
        .collection('transactions')
        .snapshots()
        .map((querySnapshot) {
      // Group data by month and calculate totals
      Map<String, Map<String, double>> monthlyData = {};

      for (var doc in querySnapshot.docs) {
        final data = doc.data();
        final DateTime date = (data['date'] as Timestamp).toDate();
        final String monthKey = "${date.year}-${date.month}"; // E.g., "2024-12"
        final String type = data['type']; // "income" or "expense"
        final double amount = (data['amount'] as num).toDouble();

        if (!monthlyData.containsKey(monthKey)) {
          monthlyData[monthKey] = {'income': 0, 'expense': 0};
        }

        if (type == 'income') {
          monthlyData[monthKey]!['income'] =
              (monthlyData[monthKey]!['income'] ?? 0) + amount;
        } else if (type == 'expense') {
          monthlyData[monthKey]!['expense'] =
              (monthlyData[monthKey]!['expense'] ?? 0) + amount;
        }
      }

      // Convert to a list of maps
      return monthlyData.entries.map((entry) {
        return {
          'month': entry.key,
          'income': entry.value['income'],
          'expense': entry.value['expense'],
        };
      }).toList();
    });
  }

  @override
  Stream<List<Map<String, dynamic>>> fetchBudgetStatusOverTime() async* {

    Stream<List<Map<String, dynamic>>> budgetsStream = fetchBudgets();
    Stream<List<Map<String, dynamic>>> transactionsStream = fetchTransactions();

    await for (final budgets in budgetsStream) {
      await for (final transactions in transactionsStream) {
        final List<Map<String, dynamic>> budgetStatus = [];
        for (var budget in budgets) {
          final category = budget['category'];
          final budgetAmount = (budget['amount'] as num).toDouble();

          // Calculate total spent for this category
          final totalSpent = transactions
              .where((t) => t['type'] == 'expense' && t['category'] == category)
              .fold(0.0, (sum, t) => sum + (t['amount'] as num).toDouble());

          final remaining = budgetAmount - totalSpent;
          budgetStatus.add({
            'category': category,
            'remaining': remaining,
          });
        }

        yield budgetStatus;
      }
    }
  }
}

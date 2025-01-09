import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_finance_tracker/core/shared/enums/processing_status.dart';
import 'package:personal_finance_tracker/domain/main_function/i_finance_tracker_facade.dart';
import 'package:personal_finance_tracker/domain/model/custom_error/custom_error.dart';

part 'finance_tracker_event.dart';

part 'finance_tracker_state.dart';

part 'finance_tracker_bloc.freezed.dart';

@injectable
class FinanceTrackerBloc
    extends Bloc<FinanceTrackerEvent, FinanceTrackerState> {
  final IFinanceTrackerFacade iFinanceTrackerFacade;

  FinanceTrackerBloc({required this.iFinanceTrackerFacade})
      : super(FinanceTrackerState.initial()) {
    on<AddIncome>(addIncome);
    on<AddExpense>(addExpenses);
    on<AddBudget>(addBudget);
    on<GetFinanceSummary>(getFinanceSummary);
    on<GetFinanceTransactions>(getFinanceTransactions);
    on<GetSpendingCategories>(getSpendingCategories);
    on<FetchBudgetStatusOverTime>(fetchBudgetStatusOverTime);
    on<FetchMonthlyIncomeExpense>(fetchMonthlyIncomeExpense);
    on<FetchExpenses>(fetchExpenses);
    on<FetchIncomes>(fetchIncomes);
    on<FetchBudgets>(fetchBudgets);
  }

  Future<void> addIncome(
      AddIncome event, Emitter<FinanceTrackerState> emit) async {
    emit(
      state.copyWith(
        processingStatus: ProcessingStatus.waiting,
      ),
    );

    try {
      await iFinanceTrackerFacade.addIncome(
        amount: event.amount,
      );

      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.success,
        ),
      );
    } on CustomError catch (e) {
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: e,
        ),
      );
    }
  }

  Future<void> addExpenses(
      AddExpense event, Emitter<FinanceTrackerState> emit) async {
    emit(state.copyWith(processingStatus: ProcessingStatus.waiting));

    try {
      await iFinanceTrackerFacade.addExpenses(
        amount: event.amount,
        category: event.category,
        description: event.description,
      );

      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.success,
        ),
      );
    } on CustomError catch (e) {
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: e,
        ),
      );
    }
  }

  Future<void> addBudget(
      AddBudget event, Emitter<FinanceTrackerState> emit) async {
    emit(state.copyWith(processingStatus: ProcessingStatus.waiting));

    try {
      await iFinanceTrackerFacade.addBudget(
        amount: event.amount,
        categoryType: event.categoryType,
      );

      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.success,
        ),
      );
    } on CustomError catch (e) {
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: e,
        ),
      );
    }
  }

  Future<void> getFinanceSummary(
    GetFinanceSummary event,
    Emitter<FinanceTrackerState> emit,
  ) async {
    emit(state.copyWith(processingStatus: ProcessingStatus.waiting));

    try {
      final getFinancialSummary = iFinanceTrackerFacade.fetchFinanceSummary();
      await emit.forEach<Map<String, dynamic>>(
        getFinancialSummary,
        onData: (financeSummary) => state.copyWith(
          financeSummary: financeSummary,
          processingStatus: ProcessingStatus.success,
        ),
        onError: (error, stackTrace) {
          if (error is FirebaseException) {
            final customError = handleFirebaseException(error);
            return state.copyWith(
              processingStatus: ProcessingStatus.error,
              error: customError,
            );
          }
          // For other error types
          return state.copyWith(
            processingStatus: ProcessingStatus.error,
            error: CustomError(
              code: "$error",
              plugin: "$error",
              errorMsg: error.toString(),
            ),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: handleFirebaseException(e),
      ));
    } on CustomError catch (e) {
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: CustomError(
            code: e.code,
            plugin: e.plugin,
            errorMsg: e.toString(),
          ),
        ),
      );
    }
  }

  Future<void> getFinanceTransactions(
      GetFinanceTransactions event, Emitter<FinanceTrackerState> emit) async {
    emit(state.copyWith(processingStatus: ProcessingStatus.waiting));

    try {
      final transactionStreams = iFinanceTrackerFacade.fetchTransactions();
      await emit.forEach<List<Map<String, dynamic>>>(
        transactionStreams,
        onData: (transactionsList) => state.copyWith(
          financeTransactions: transactionsList,
          processingStatus: ProcessingStatus.success,
        ),
        onError: (error, stackTrace) {
          if (error is FirebaseException) {
            final customError = handleFirebaseException(error);
            return state.copyWith(
              processingStatus: ProcessingStatus.error,
              error: customError,
            );
          }
          // For other error types
          return state.copyWith(
            processingStatus: ProcessingStatus.error,
            error: CustomError(
              code: "$error",
              plugin: "$error",
              errorMsg: error.toString(),
            ),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: handleFirebaseException(e),
      ));
    } on CustomError catch (e) {
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: CustomError(
            code: e.code,
            plugin: e.plugin,
            errorMsg: e.toString(),
          ),
        ),
      );
    }
  }

  Future<void> getSpendingCategories(
      GetSpendingCategories event, Emitter<FinanceTrackerState> emit) async {
    emit(state.copyWith(processingStatus: ProcessingStatus.waiting));

    try {
      final spendingCategoryStreams =
          iFinanceTrackerFacade.fetchSpendingCategories();
      await emit.forEach<List<Map<String, dynamic>>>(
        spendingCategoryStreams,
        onData: (spendingCategoriesList) => state.copyWith(
          spendingCategories: spendingCategoriesList,
          processingStatus: ProcessingStatus.success,
        ),
        onError: (error, stackTrace) {
          if (error is FirebaseException) {
            final customError = handleFirebaseException(error);
            return state.copyWith(
              processingStatus: ProcessingStatus.error,
              error: customError,
            );
          }
          // For other error types
          return state.copyWith(
            processingStatus: ProcessingStatus.error,
            error: CustomError(
              code: "$error",
              plugin: "$error",
              errorMsg: error.toString(),
            ),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: handleFirebaseException(e),
      ));
    } on CustomError catch (e) {
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: CustomError(
            code: e.code,
            plugin: e.plugin,
            errorMsg: e.toString(),
          ),
        ),
      );
    }
  }

  Future<void> fetchBudgetStatusOverTime(FetchBudgetStatusOverTime event,
      Emitter<FinanceTrackerState> emit) async {
    emit(state.copyWith(processingStatus: ProcessingStatus.waiting));

    try {
      final fetchBudgetStatusOverTimeStream =
          iFinanceTrackerFacade.fetchBudgetStatusOverTime();
      await emit.forEach<List<Map<String, dynamic>>>(
        fetchBudgetStatusOverTimeStream,
        onData: (fetchBudgetStatusOverTimeList) => state.copyWith(
          fetchBudgetStatusOverTime: fetchBudgetStatusOverTimeList,
          processingStatus: ProcessingStatus.success,
        ),
        onError: (error, stackTrace) {
          if (error is FirebaseException) {
            final customError = handleFirebaseException(error);
            return state.copyWith(
              processingStatus: ProcessingStatus.error,
              error: customError,
            );
          }
          // For other error types
          return state.copyWith(
            processingStatus: ProcessingStatus.error,
            error: CustomError(
              code: "$error",
              plugin: "$error",
              errorMsg: error.toString(),
            ),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: handleFirebaseException(e),
      ));
    } on CustomError catch (e) {
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: CustomError(
            code: e.code,
            plugin: e.plugin,
            errorMsg: e.toString(),
          ),
        ),
      );
    }
  }

  Future<void> fetchMonthlyIncomeExpense(FetchMonthlyIncomeExpense event,
      Emitter<FinanceTrackerState> emit) async {
    emit(state.copyWith(processingStatus: ProcessingStatus.waiting));

    try {
      final fetchMonthlyIncomeExpenseStreams =
          iFinanceTrackerFacade.fetchMonthlyIncomeExpense();
      await emit.forEach<List<Map<String, dynamic>>>(
        fetchMonthlyIncomeExpenseStreams,
        onData: (fetchMonthlyIncomeExpenseList) => state.copyWith(
          fetchMonthlyIncomeExpense: fetchMonthlyIncomeExpenseList,
          processingStatus: ProcessingStatus.success,
        ),
        onError: (error, stackTrace) {
          if (error is FirebaseException) {
            final customError = handleFirebaseException(error);
            return state.copyWith(
              processingStatus: ProcessingStatus.error,
              error: customError,
            );
          }
          // For other error types
          return state.copyWith(
            processingStatus: ProcessingStatus.error,
            error: CustomError(
              code: "$error",
              plugin: "$error",
              errorMsg: error.toString(),
            ),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: handleFirebaseException(e),
      ));
    } on CustomError catch (e) {
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: CustomError(
            code: e.code,
            plugin: e.plugin,
            errorMsg: e.toString(),
          ),
        ),
      );
    }
  }

  Future<void> fetchExpenses(
      FetchExpenses event, Emitter<FinanceTrackerState> emit) async {
    emit(state.copyWith(processingStatus: ProcessingStatus.waiting));

    try {
      final fetchExpensesStreams = iFinanceTrackerFacade.fetchExpenses();
      await emit.forEach<List<Map<String, dynamic>>>(
        fetchExpensesStreams,
        onData: (fetchExpensesList) => state.copyWith(
          fetchExpenses: fetchExpensesList,
          processingStatus: ProcessingStatus.success,
        ),
        onError: (error, stackTrace) {
          if (error is FirebaseException) {
            final customError = handleFirebaseException(error);
            return state.copyWith(
              processingStatus: ProcessingStatus.error,
              error: customError,
            );
          }
          // For other error types
          return state.copyWith(
            processingStatus: ProcessingStatus.error,
            error: CustomError(
              code: "$error",
              plugin: "$error",
              errorMsg: error.toString(),
            ),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: handleFirebaseException(e),
      ));
    } on CustomError catch (e) {
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: CustomError(
            code: e.code,
            plugin: e.plugin,
            errorMsg: e.toString(),
          ),
        ),
      );
    }
  }

  Future<void> fetchIncomes(
      FetchIncomes event, Emitter<FinanceTrackerState> emit) async {
    emit(state.copyWith(processingStatus: ProcessingStatus.waiting));

    try {
      final fetchIncomesStreams = iFinanceTrackerFacade.fetchIncomes();
      await emit.forEach<List<Map<String, dynamic>>>(
        fetchIncomesStreams,
        onData: (fetchIncomesList) => state.copyWith(
          fetchIncomes: fetchIncomesList,
          processingStatus: ProcessingStatus.success,
        ),
        onError: (error, stackTrace) {
          if (error is FirebaseException) {
            final customError = handleFirebaseException(error);
            return state.copyWith(
              processingStatus: ProcessingStatus.error,
              error: customError,
            );
          }
          // For other error types
          return state.copyWith(
            processingStatus: ProcessingStatus.error,
            error: CustomError(
              code: "$error",
              plugin: "$error",
              errorMsg: error.toString(),
            ),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: handleFirebaseException(e),
      ));
    } on CustomError catch (e) {
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: CustomError(
            code: e.code,
            plugin: e.plugin,
            errorMsg: e.toString(),
          ),
        ),
      );
    }
  }

  Future<void> fetchBudgets(
      FetchBudgets event, Emitter<FinanceTrackerState> emit) async {
    emit(state.copyWith(processingStatus: ProcessingStatus.waiting));

    try {
      final fetchBudgetsStreams = iFinanceTrackerFacade.fetchBudgets();
      await emit.forEach<List<Map<String, dynamic>>>(
        fetchBudgetsStreams,
        onData: (fetchBudgetsList) => state.copyWith(
          fetchBudgets: fetchBudgetsList,
          processingStatus: ProcessingStatus.success,
        ),
        onError: (error, stackTrace) {
          if (error is FirebaseException) {
            final customError = handleFirebaseException(error);
            return state.copyWith(
              processingStatus: ProcessingStatus.error,
              error: customError,
            );
          }
          // For other error types
          return state.copyWith(
            processingStatus: ProcessingStatus.error,
            error: CustomError(
              code: "$error",
              plugin: "$error",
              errorMsg: error.toString(),
            ),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: handleFirebaseException(e),
      ));
    } on CustomError catch (e) {
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: CustomError(
            code: e.code,
            plugin: e.plugin,
            errorMsg: e.toString(),
          ),
        ),
      );
    }
  }

  CustomError handleFirebaseException(FirebaseException e) {
    return CustomError(
      errorMsg: e.message ?? "An unknown Firebase error occurred.",
      code: e.code,
      plugin: e.plugin,
    );
  }
}

part of 'finance_tracker_bloc.dart';

@freezed
class FinanceTrackerEvent with _$FinanceTrackerEvent {
  const factory FinanceTrackerEvent.addIncome({
    required double amount,
  }) = AddIncome;

  const factory FinanceTrackerEvent.addBudget({
    required double amount,
    required String categoryType,
  }) = AddBudget;

  const factory FinanceTrackerEvent.addExpense({
    required double amount,
    required String category,
    required String description,
  }) = AddExpense;

  const factory FinanceTrackerEvent.getFinanceSummary() = GetFinanceSummary;

  const factory FinanceTrackerEvent.getFinanceTransactions() =
      GetFinanceTransactions;

  const factory FinanceTrackerEvent.getSpendingCategories() =
      GetSpendingCategories;

  const factory FinanceTrackerEvent.fetchBudgetStatusOverTime() =
      FetchBudgetStatusOverTime;

  const factory FinanceTrackerEvent.fetchMonthlyIncomeExpense() =
      FetchMonthlyIncomeExpense;

  const factory FinanceTrackerEvent.fetchExpenses() = FetchExpenses;

  const factory FinanceTrackerEvent.fetchIncomes() = FetchIncomes;

  const factory FinanceTrackerEvent.fetchBudgets() = FetchBudgets;
}

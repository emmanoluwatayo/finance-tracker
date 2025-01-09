part of 'finance_tracker_bloc.dart';

@freezed
class FinanceTrackerState with _$FinanceTrackerState {
  const factory FinanceTrackerState({
    required ProcessingStatus processingStatus,
    required CustomError error,
    required Map<String, dynamic> financeSummary,
    required List<Map<String, dynamic>> financeTransactions,
    required List<Map<String, dynamic>> spendingCategories,
    required List<Map<String, dynamic>> fetchIncomes,
    required List<Map<String, dynamic>> fetchExpenses,
    required List<Map<String, dynamic>> fetchBudgets,
    required List<Map<String, dynamic>> fetchMonthlyIncomeExpense,
    required List<Map<String, dynamic>> fetchBudgetStatusOverTime,
  }) = _FinanceTrackerState;

  factory FinanceTrackerState.initial() => FinanceTrackerState(
        processingStatus: ProcessingStatus.initial,
        error: CustomError.initial(),
        financeSummary: {},
        financeTransactions: [],
        spendingCategories: [],
        fetchBudgetStatusOverTime: [],
        fetchMonthlyIncomeExpense: [],
        fetchBudgets: [],
        fetchExpenses: [],
        fetchIncomes: [],
      );
}

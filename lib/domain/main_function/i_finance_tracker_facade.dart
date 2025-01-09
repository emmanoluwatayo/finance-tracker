abstract class IFinanceTrackerFacade {
  Future<void> addIncome({
    required double amount,
  });

  Future<void> addExpenses({
    required double amount,
    required String category,
    required String description,
  });

  Future<void> addBudget({
    required double amount,
    required String categoryType,
  });

  Stream<List<Map<String, dynamic>>> fetchTransactions();

  Stream<List<Map<String, dynamic>>> fetchIncomes();

  Stream<List<Map<String, dynamic>>> fetchExpenses();

  Stream<List<Map<String, dynamic>>> fetchBudgets();

  Stream<Map<String, dynamic>> fetchFinanceSummary();

  Stream<List<Map<String, dynamic>>> fetchSpendingCategories();

  Stream<List<Map<String, dynamic>>> fetchMonthlyIncomeExpense();

  Stream<List<Map<String, dynamic>>> fetchBudgetStatusOverTime();
}

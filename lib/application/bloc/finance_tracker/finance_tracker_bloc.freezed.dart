// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_tracker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinanceTrackerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) addIncome,
    required TResult Function(double amount, String categoryType) addBudget,
    required TResult Function(
            double amount, String category, String description)
        addExpense,
    required TResult Function() getFinanceSummary,
    required TResult Function() getFinanceTransactions,
    required TResult Function() getSpendingCategories,
    required TResult Function() fetchBudgetStatusOverTime,
    required TResult Function() fetchMonthlyIncomeExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() fetchIncomes,
    required TResult Function() fetchBudgets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? addIncome,
    TResult? Function(double amount, String categoryType)? addBudget,
    TResult? Function(double amount, String category, String description)?
        addExpense,
    TResult? Function()? getFinanceSummary,
    TResult? Function()? getFinanceTransactions,
    TResult? Function()? getSpendingCategories,
    TResult? Function()? fetchBudgetStatusOverTime,
    TResult? Function()? fetchMonthlyIncomeExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? fetchIncomes,
    TResult? Function()? fetchBudgets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? addIncome,
    TResult Function(double amount, String categoryType)? addBudget,
    TResult Function(double amount, String category, String description)?
        addExpense,
    TResult Function()? getFinanceSummary,
    TResult Function()? getFinanceTransactions,
    TResult Function()? getSpendingCategories,
    TResult Function()? fetchBudgetStatusOverTime,
    TResult Function()? fetchMonthlyIncomeExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? fetchIncomes,
    TResult Function()? fetchBudgets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(GetFinanceSummary value) getFinanceSummary,
    required TResult Function(GetFinanceTransactions value)
        getFinanceTransactions,
    required TResult Function(GetSpendingCategories value)
        getSpendingCategories,
    required TResult Function(FetchBudgetStatusOverTime value)
        fetchBudgetStatusOverTime,
    required TResult Function(FetchMonthlyIncomeExpense value)
        fetchMonthlyIncomeExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(FetchBudgets value) fetchBudgets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(GetFinanceSummary value)? getFinanceSummary,
    TResult? Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult? Function(GetSpendingCategories value)? getSpendingCategories,
    TResult? Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult? Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(FetchBudgets value)? fetchBudgets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(AddExpense value)? addExpense,
    TResult Function(GetFinanceSummary value)? getFinanceSummary,
    TResult Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult Function(GetSpendingCategories value)? getSpendingCategories,
    TResult Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(FetchBudgets value)? fetchBudgets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceTrackerEventCopyWith<$Res> {
  factory $FinanceTrackerEventCopyWith(
          FinanceTrackerEvent value, $Res Function(FinanceTrackerEvent) then) =
      _$FinanceTrackerEventCopyWithImpl<$Res, FinanceTrackerEvent>;
}

/// @nodoc
class _$FinanceTrackerEventCopyWithImpl<$Res, $Val extends FinanceTrackerEvent>
    implements $FinanceTrackerEventCopyWith<$Res> {
  _$FinanceTrackerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddIncomeImplCopyWith<$Res> {
  factory _$$AddIncomeImplCopyWith(
          _$AddIncomeImpl value, $Res Function(_$AddIncomeImpl) then) =
      __$$AddIncomeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$AddIncomeImplCopyWithImpl<$Res>
    extends _$FinanceTrackerEventCopyWithImpl<$Res, _$AddIncomeImpl>
    implements _$$AddIncomeImplCopyWith<$Res> {
  __$$AddIncomeImplCopyWithImpl(
      _$AddIncomeImpl _value, $Res Function(_$AddIncomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$AddIncomeImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AddIncomeImpl implements AddIncome {
  const _$AddIncomeImpl({required this.amount});

  @override
  final double amount;

  @override
  String toString() {
    return 'FinanceTrackerEvent.addIncome(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddIncomeImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddIncomeImplCopyWith<_$AddIncomeImpl> get copyWith =>
      __$$AddIncomeImplCopyWithImpl<_$AddIncomeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) addIncome,
    required TResult Function(double amount, String categoryType) addBudget,
    required TResult Function(
            double amount, String category, String description)
        addExpense,
    required TResult Function() getFinanceSummary,
    required TResult Function() getFinanceTransactions,
    required TResult Function() getSpendingCategories,
    required TResult Function() fetchBudgetStatusOverTime,
    required TResult Function() fetchMonthlyIncomeExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() fetchIncomes,
    required TResult Function() fetchBudgets,
  }) {
    return addIncome(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? addIncome,
    TResult? Function(double amount, String categoryType)? addBudget,
    TResult? Function(double amount, String category, String description)?
        addExpense,
    TResult? Function()? getFinanceSummary,
    TResult? Function()? getFinanceTransactions,
    TResult? Function()? getSpendingCategories,
    TResult? Function()? fetchBudgetStatusOverTime,
    TResult? Function()? fetchMonthlyIncomeExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? fetchIncomes,
    TResult? Function()? fetchBudgets,
  }) {
    return addIncome?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? addIncome,
    TResult Function(double amount, String categoryType)? addBudget,
    TResult Function(double amount, String category, String description)?
        addExpense,
    TResult Function()? getFinanceSummary,
    TResult Function()? getFinanceTransactions,
    TResult Function()? getSpendingCategories,
    TResult Function()? fetchBudgetStatusOverTime,
    TResult Function()? fetchMonthlyIncomeExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? fetchIncomes,
    TResult Function()? fetchBudgets,
    required TResult orElse(),
  }) {
    if (addIncome != null) {
      return addIncome(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(GetFinanceSummary value) getFinanceSummary,
    required TResult Function(GetFinanceTransactions value)
        getFinanceTransactions,
    required TResult Function(GetSpendingCategories value)
        getSpendingCategories,
    required TResult Function(FetchBudgetStatusOverTime value)
        fetchBudgetStatusOverTime,
    required TResult Function(FetchMonthlyIncomeExpense value)
        fetchMonthlyIncomeExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(FetchBudgets value) fetchBudgets,
  }) {
    return addIncome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(GetFinanceSummary value)? getFinanceSummary,
    TResult? Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult? Function(GetSpendingCategories value)? getSpendingCategories,
    TResult? Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult? Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(FetchBudgets value)? fetchBudgets,
  }) {
    return addIncome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(AddExpense value)? addExpense,
    TResult Function(GetFinanceSummary value)? getFinanceSummary,
    TResult Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult Function(GetSpendingCategories value)? getSpendingCategories,
    TResult Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(FetchBudgets value)? fetchBudgets,
    required TResult orElse(),
  }) {
    if (addIncome != null) {
      return addIncome(this);
    }
    return orElse();
  }
}

abstract class AddIncome implements FinanceTrackerEvent {
  const factory AddIncome({required final double amount}) = _$AddIncomeImpl;

  double get amount;
  @JsonKey(ignore: true)
  _$$AddIncomeImplCopyWith<_$AddIncomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddBudgetImplCopyWith<$Res> {
  factory _$$AddBudgetImplCopyWith(
          _$AddBudgetImpl value, $Res Function(_$AddBudgetImpl) then) =
      __$$AddBudgetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount, String categoryType});
}

/// @nodoc
class __$$AddBudgetImplCopyWithImpl<$Res>
    extends _$FinanceTrackerEventCopyWithImpl<$Res, _$AddBudgetImpl>
    implements _$$AddBudgetImplCopyWith<$Res> {
  __$$AddBudgetImplCopyWithImpl(
      _$AddBudgetImpl _value, $Res Function(_$AddBudgetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? categoryType = null,
  }) {
    return _then(_$AddBudgetImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddBudgetImpl implements AddBudget {
  const _$AddBudgetImpl({required this.amount, required this.categoryType});

  @override
  final double amount;
  @override
  final String categoryType;

  @override
  String toString() {
    return 'FinanceTrackerEvent.addBudget(amount: $amount, categoryType: $categoryType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBudgetImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, categoryType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBudgetImplCopyWith<_$AddBudgetImpl> get copyWith =>
      __$$AddBudgetImplCopyWithImpl<_$AddBudgetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) addIncome,
    required TResult Function(double amount, String categoryType) addBudget,
    required TResult Function(
            double amount, String category, String description)
        addExpense,
    required TResult Function() getFinanceSummary,
    required TResult Function() getFinanceTransactions,
    required TResult Function() getSpendingCategories,
    required TResult Function() fetchBudgetStatusOverTime,
    required TResult Function() fetchMonthlyIncomeExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() fetchIncomes,
    required TResult Function() fetchBudgets,
  }) {
    return addBudget(amount, categoryType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? addIncome,
    TResult? Function(double amount, String categoryType)? addBudget,
    TResult? Function(double amount, String category, String description)?
        addExpense,
    TResult? Function()? getFinanceSummary,
    TResult? Function()? getFinanceTransactions,
    TResult? Function()? getSpendingCategories,
    TResult? Function()? fetchBudgetStatusOverTime,
    TResult? Function()? fetchMonthlyIncomeExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? fetchIncomes,
    TResult? Function()? fetchBudgets,
  }) {
    return addBudget?.call(amount, categoryType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? addIncome,
    TResult Function(double amount, String categoryType)? addBudget,
    TResult Function(double amount, String category, String description)?
        addExpense,
    TResult Function()? getFinanceSummary,
    TResult Function()? getFinanceTransactions,
    TResult Function()? getSpendingCategories,
    TResult Function()? fetchBudgetStatusOverTime,
    TResult Function()? fetchMonthlyIncomeExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? fetchIncomes,
    TResult Function()? fetchBudgets,
    required TResult orElse(),
  }) {
    if (addBudget != null) {
      return addBudget(amount, categoryType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(GetFinanceSummary value) getFinanceSummary,
    required TResult Function(GetFinanceTransactions value)
        getFinanceTransactions,
    required TResult Function(GetSpendingCategories value)
        getSpendingCategories,
    required TResult Function(FetchBudgetStatusOverTime value)
        fetchBudgetStatusOverTime,
    required TResult Function(FetchMonthlyIncomeExpense value)
        fetchMonthlyIncomeExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(FetchBudgets value) fetchBudgets,
  }) {
    return addBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(GetFinanceSummary value)? getFinanceSummary,
    TResult? Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult? Function(GetSpendingCategories value)? getSpendingCategories,
    TResult? Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult? Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(FetchBudgets value)? fetchBudgets,
  }) {
    return addBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(AddExpense value)? addExpense,
    TResult Function(GetFinanceSummary value)? getFinanceSummary,
    TResult Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult Function(GetSpendingCategories value)? getSpendingCategories,
    TResult Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(FetchBudgets value)? fetchBudgets,
    required TResult orElse(),
  }) {
    if (addBudget != null) {
      return addBudget(this);
    }
    return orElse();
  }
}

abstract class AddBudget implements FinanceTrackerEvent {
  const factory AddBudget(
      {required final double amount,
      required final String categoryType}) = _$AddBudgetImpl;

  double get amount;
  String get categoryType;
  @JsonKey(ignore: true)
  _$$AddBudgetImplCopyWith<_$AddBudgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddExpenseImplCopyWith<$Res> {
  factory _$$AddExpenseImplCopyWith(
          _$AddExpenseImpl value, $Res Function(_$AddExpenseImpl) then) =
      __$$AddExpenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount, String category, String description});
}

/// @nodoc
class __$$AddExpenseImplCopyWithImpl<$Res>
    extends _$FinanceTrackerEventCopyWithImpl<$Res, _$AddExpenseImpl>
    implements _$$AddExpenseImplCopyWith<$Res> {
  __$$AddExpenseImplCopyWithImpl(
      _$AddExpenseImpl _value, $Res Function(_$AddExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? category = null,
    Object? description = null,
  }) {
    return _then(_$AddExpenseImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddExpenseImpl implements AddExpense {
  const _$AddExpenseImpl(
      {required this.amount,
      required this.category,
      required this.description});

  @override
  final double amount;
  @override
  final String category;
  @override
  final String description;

  @override
  String toString() {
    return 'FinanceTrackerEvent.addExpense(amount: $amount, category: $category, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExpenseImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, category, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExpenseImplCopyWith<_$AddExpenseImpl> get copyWith =>
      __$$AddExpenseImplCopyWithImpl<_$AddExpenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) addIncome,
    required TResult Function(double amount, String categoryType) addBudget,
    required TResult Function(
            double amount, String category, String description)
        addExpense,
    required TResult Function() getFinanceSummary,
    required TResult Function() getFinanceTransactions,
    required TResult Function() getSpendingCategories,
    required TResult Function() fetchBudgetStatusOverTime,
    required TResult Function() fetchMonthlyIncomeExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() fetchIncomes,
    required TResult Function() fetchBudgets,
  }) {
    return addExpense(amount, category, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? addIncome,
    TResult? Function(double amount, String categoryType)? addBudget,
    TResult? Function(double amount, String category, String description)?
        addExpense,
    TResult? Function()? getFinanceSummary,
    TResult? Function()? getFinanceTransactions,
    TResult? Function()? getSpendingCategories,
    TResult? Function()? fetchBudgetStatusOverTime,
    TResult? Function()? fetchMonthlyIncomeExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? fetchIncomes,
    TResult? Function()? fetchBudgets,
  }) {
    return addExpense?.call(amount, category, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? addIncome,
    TResult Function(double amount, String categoryType)? addBudget,
    TResult Function(double amount, String category, String description)?
        addExpense,
    TResult Function()? getFinanceSummary,
    TResult Function()? getFinanceTransactions,
    TResult Function()? getSpendingCategories,
    TResult Function()? fetchBudgetStatusOverTime,
    TResult Function()? fetchMonthlyIncomeExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? fetchIncomes,
    TResult Function()? fetchBudgets,
    required TResult orElse(),
  }) {
    if (addExpense != null) {
      return addExpense(amount, category, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(GetFinanceSummary value) getFinanceSummary,
    required TResult Function(GetFinanceTransactions value)
        getFinanceTransactions,
    required TResult Function(GetSpendingCategories value)
        getSpendingCategories,
    required TResult Function(FetchBudgetStatusOverTime value)
        fetchBudgetStatusOverTime,
    required TResult Function(FetchMonthlyIncomeExpense value)
        fetchMonthlyIncomeExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(FetchBudgets value) fetchBudgets,
  }) {
    return addExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(GetFinanceSummary value)? getFinanceSummary,
    TResult? Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult? Function(GetSpendingCategories value)? getSpendingCategories,
    TResult? Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult? Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(FetchBudgets value)? fetchBudgets,
  }) {
    return addExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(AddExpense value)? addExpense,
    TResult Function(GetFinanceSummary value)? getFinanceSummary,
    TResult Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult Function(GetSpendingCategories value)? getSpendingCategories,
    TResult Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(FetchBudgets value)? fetchBudgets,
    required TResult orElse(),
  }) {
    if (addExpense != null) {
      return addExpense(this);
    }
    return orElse();
  }
}

abstract class AddExpense implements FinanceTrackerEvent {
  const factory AddExpense(
      {required final double amount,
      required final String category,
      required final String description}) = _$AddExpenseImpl;

  double get amount;
  String get category;
  String get description;
  @JsonKey(ignore: true)
  _$$AddExpenseImplCopyWith<_$AddExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFinanceSummaryImplCopyWith<$Res> {
  factory _$$GetFinanceSummaryImplCopyWith(_$GetFinanceSummaryImpl value,
          $Res Function(_$GetFinanceSummaryImpl) then) =
      __$$GetFinanceSummaryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFinanceSummaryImplCopyWithImpl<$Res>
    extends _$FinanceTrackerEventCopyWithImpl<$Res, _$GetFinanceSummaryImpl>
    implements _$$GetFinanceSummaryImplCopyWith<$Res> {
  __$$GetFinanceSummaryImplCopyWithImpl(_$GetFinanceSummaryImpl _value,
      $Res Function(_$GetFinanceSummaryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFinanceSummaryImpl implements GetFinanceSummary {
  const _$GetFinanceSummaryImpl();

  @override
  String toString() {
    return 'FinanceTrackerEvent.getFinanceSummary()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFinanceSummaryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) addIncome,
    required TResult Function(double amount, String categoryType) addBudget,
    required TResult Function(
            double amount, String category, String description)
        addExpense,
    required TResult Function() getFinanceSummary,
    required TResult Function() getFinanceTransactions,
    required TResult Function() getSpendingCategories,
    required TResult Function() fetchBudgetStatusOverTime,
    required TResult Function() fetchMonthlyIncomeExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() fetchIncomes,
    required TResult Function() fetchBudgets,
  }) {
    return getFinanceSummary();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? addIncome,
    TResult? Function(double amount, String categoryType)? addBudget,
    TResult? Function(double amount, String category, String description)?
        addExpense,
    TResult? Function()? getFinanceSummary,
    TResult? Function()? getFinanceTransactions,
    TResult? Function()? getSpendingCategories,
    TResult? Function()? fetchBudgetStatusOverTime,
    TResult? Function()? fetchMonthlyIncomeExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? fetchIncomes,
    TResult? Function()? fetchBudgets,
  }) {
    return getFinanceSummary?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? addIncome,
    TResult Function(double amount, String categoryType)? addBudget,
    TResult Function(double amount, String category, String description)?
        addExpense,
    TResult Function()? getFinanceSummary,
    TResult Function()? getFinanceTransactions,
    TResult Function()? getSpendingCategories,
    TResult Function()? fetchBudgetStatusOverTime,
    TResult Function()? fetchMonthlyIncomeExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? fetchIncomes,
    TResult Function()? fetchBudgets,
    required TResult orElse(),
  }) {
    if (getFinanceSummary != null) {
      return getFinanceSummary();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(GetFinanceSummary value) getFinanceSummary,
    required TResult Function(GetFinanceTransactions value)
        getFinanceTransactions,
    required TResult Function(GetSpendingCategories value)
        getSpendingCategories,
    required TResult Function(FetchBudgetStatusOverTime value)
        fetchBudgetStatusOverTime,
    required TResult Function(FetchMonthlyIncomeExpense value)
        fetchMonthlyIncomeExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(FetchBudgets value) fetchBudgets,
  }) {
    return getFinanceSummary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(GetFinanceSummary value)? getFinanceSummary,
    TResult? Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult? Function(GetSpendingCategories value)? getSpendingCategories,
    TResult? Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult? Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(FetchBudgets value)? fetchBudgets,
  }) {
    return getFinanceSummary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(AddExpense value)? addExpense,
    TResult Function(GetFinanceSummary value)? getFinanceSummary,
    TResult Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult Function(GetSpendingCategories value)? getSpendingCategories,
    TResult Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(FetchBudgets value)? fetchBudgets,
    required TResult orElse(),
  }) {
    if (getFinanceSummary != null) {
      return getFinanceSummary(this);
    }
    return orElse();
  }
}

abstract class GetFinanceSummary implements FinanceTrackerEvent {
  const factory GetFinanceSummary() = _$GetFinanceSummaryImpl;
}

/// @nodoc
abstract class _$$GetFinanceTransactionsImplCopyWith<$Res> {
  factory _$$GetFinanceTransactionsImplCopyWith(
          _$GetFinanceTransactionsImpl value,
          $Res Function(_$GetFinanceTransactionsImpl) then) =
      __$$GetFinanceTransactionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFinanceTransactionsImplCopyWithImpl<$Res>
    extends _$FinanceTrackerEventCopyWithImpl<$Res,
        _$GetFinanceTransactionsImpl>
    implements _$$GetFinanceTransactionsImplCopyWith<$Res> {
  __$$GetFinanceTransactionsImplCopyWithImpl(
      _$GetFinanceTransactionsImpl _value,
      $Res Function(_$GetFinanceTransactionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFinanceTransactionsImpl implements GetFinanceTransactions {
  const _$GetFinanceTransactionsImpl();

  @override
  String toString() {
    return 'FinanceTrackerEvent.getFinanceTransactions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFinanceTransactionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) addIncome,
    required TResult Function(double amount, String categoryType) addBudget,
    required TResult Function(
            double amount, String category, String description)
        addExpense,
    required TResult Function() getFinanceSummary,
    required TResult Function() getFinanceTransactions,
    required TResult Function() getSpendingCategories,
    required TResult Function() fetchBudgetStatusOverTime,
    required TResult Function() fetchMonthlyIncomeExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() fetchIncomes,
    required TResult Function() fetchBudgets,
  }) {
    return getFinanceTransactions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? addIncome,
    TResult? Function(double amount, String categoryType)? addBudget,
    TResult? Function(double amount, String category, String description)?
        addExpense,
    TResult? Function()? getFinanceSummary,
    TResult? Function()? getFinanceTransactions,
    TResult? Function()? getSpendingCategories,
    TResult? Function()? fetchBudgetStatusOverTime,
    TResult? Function()? fetchMonthlyIncomeExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? fetchIncomes,
    TResult? Function()? fetchBudgets,
  }) {
    return getFinanceTransactions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? addIncome,
    TResult Function(double amount, String categoryType)? addBudget,
    TResult Function(double amount, String category, String description)?
        addExpense,
    TResult Function()? getFinanceSummary,
    TResult Function()? getFinanceTransactions,
    TResult Function()? getSpendingCategories,
    TResult Function()? fetchBudgetStatusOverTime,
    TResult Function()? fetchMonthlyIncomeExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? fetchIncomes,
    TResult Function()? fetchBudgets,
    required TResult orElse(),
  }) {
    if (getFinanceTransactions != null) {
      return getFinanceTransactions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(GetFinanceSummary value) getFinanceSummary,
    required TResult Function(GetFinanceTransactions value)
        getFinanceTransactions,
    required TResult Function(GetSpendingCategories value)
        getSpendingCategories,
    required TResult Function(FetchBudgetStatusOverTime value)
        fetchBudgetStatusOverTime,
    required TResult Function(FetchMonthlyIncomeExpense value)
        fetchMonthlyIncomeExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(FetchBudgets value) fetchBudgets,
  }) {
    return getFinanceTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(GetFinanceSummary value)? getFinanceSummary,
    TResult? Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult? Function(GetSpendingCategories value)? getSpendingCategories,
    TResult? Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult? Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(FetchBudgets value)? fetchBudgets,
  }) {
    return getFinanceTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(AddExpense value)? addExpense,
    TResult Function(GetFinanceSummary value)? getFinanceSummary,
    TResult Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult Function(GetSpendingCategories value)? getSpendingCategories,
    TResult Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(FetchBudgets value)? fetchBudgets,
    required TResult orElse(),
  }) {
    if (getFinanceTransactions != null) {
      return getFinanceTransactions(this);
    }
    return orElse();
  }
}

abstract class GetFinanceTransactions implements FinanceTrackerEvent {
  const factory GetFinanceTransactions() = _$GetFinanceTransactionsImpl;
}

/// @nodoc
abstract class _$$GetSpendingCategoriesImplCopyWith<$Res> {
  factory _$$GetSpendingCategoriesImplCopyWith(
          _$GetSpendingCategoriesImpl value,
          $Res Function(_$GetSpendingCategoriesImpl) then) =
      __$$GetSpendingCategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSpendingCategoriesImplCopyWithImpl<$Res>
    extends _$FinanceTrackerEventCopyWithImpl<$Res, _$GetSpendingCategoriesImpl>
    implements _$$GetSpendingCategoriesImplCopyWith<$Res> {
  __$$GetSpendingCategoriesImplCopyWithImpl(_$GetSpendingCategoriesImpl _value,
      $Res Function(_$GetSpendingCategoriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSpendingCategoriesImpl implements GetSpendingCategories {
  const _$GetSpendingCategoriesImpl();

  @override
  String toString() {
    return 'FinanceTrackerEvent.getSpendingCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSpendingCategoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) addIncome,
    required TResult Function(double amount, String categoryType) addBudget,
    required TResult Function(
            double amount, String category, String description)
        addExpense,
    required TResult Function() getFinanceSummary,
    required TResult Function() getFinanceTransactions,
    required TResult Function() getSpendingCategories,
    required TResult Function() fetchBudgetStatusOverTime,
    required TResult Function() fetchMonthlyIncomeExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() fetchIncomes,
    required TResult Function() fetchBudgets,
  }) {
    return getSpendingCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? addIncome,
    TResult? Function(double amount, String categoryType)? addBudget,
    TResult? Function(double amount, String category, String description)?
        addExpense,
    TResult? Function()? getFinanceSummary,
    TResult? Function()? getFinanceTransactions,
    TResult? Function()? getSpendingCategories,
    TResult? Function()? fetchBudgetStatusOverTime,
    TResult? Function()? fetchMonthlyIncomeExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? fetchIncomes,
    TResult? Function()? fetchBudgets,
  }) {
    return getSpendingCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? addIncome,
    TResult Function(double amount, String categoryType)? addBudget,
    TResult Function(double amount, String category, String description)?
        addExpense,
    TResult Function()? getFinanceSummary,
    TResult Function()? getFinanceTransactions,
    TResult Function()? getSpendingCategories,
    TResult Function()? fetchBudgetStatusOverTime,
    TResult Function()? fetchMonthlyIncomeExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? fetchIncomes,
    TResult Function()? fetchBudgets,
    required TResult orElse(),
  }) {
    if (getSpendingCategories != null) {
      return getSpendingCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(GetFinanceSummary value) getFinanceSummary,
    required TResult Function(GetFinanceTransactions value)
        getFinanceTransactions,
    required TResult Function(GetSpendingCategories value)
        getSpendingCategories,
    required TResult Function(FetchBudgetStatusOverTime value)
        fetchBudgetStatusOverTime,
    required TResult Function(FetchMonthlyIncomeExpense value)
        fetchMonthlyIncomeExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(FetchBudgets value) fetchBudgets,
  }) {
    return getSpendingCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(GetFinanceSummary value)? getFinanceSummary,
    TResult? Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult? Function(GetSpendingCategories value)? getSpendingCategories,
    TResult? Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult? Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(FetchBudgets value)? fetchBudgets,
  }) {
    return getSpendingCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(AddExpense value)? addExpense,
    TResult Function(GetFinanceSummary value)? getFinanceSummary,
    TResult Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult Function(GetSpendingCategories value)? getSpendingCategories,
    TResult Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(FetchBudgets value)? fetchBudgets,
    required TResult orElse(),
  }) {
    if (getSpendingCategories != null) {
      return getSpendingCategories(this);
    }
    return orElse();
  }
}

abstract class GetSpendingCategories implements FinanceTrackerEvent {
  const factory GetSpendingCategories() = _$GetSpendingCategoriesImpl;
}

/// @nodoc
abstract class _$$FetchBudgetStatusOverTimeImplCopyWith<$Res> {
  factory _$$FetchBudgetStatusOverTimeImplCopyWith(
          _$FetchBudgetStatusOverTimeImpl value,
          $Res Function(_$FetchBudgetStatusOverTimeImpl) then) =
      __$$FetchBudgetStatusOverTimeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchBudgetStatusOverTimeImplCopyWithImpl<$Res>
    extends _$FinanceTrackerEventCopyWithImpl<$Res,
        _$FetchBudgetStatusOverTimeImpl>
    implements _$$FetchBudgetStatusOverTimeImplCopyWith<$Res> {
  __$$FetchBudgetStatusOverTimeImplCopyWithImpl(
      _$FetchBudgetStatusOverTimeImpl _value,
      $Res Function(_$FetchBudgetStatusOverTimeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchBudgetStatusOverTimeImpl implements FetchBudgetStatusOverTime {
  const _$FetchBudgetStatusOverTimeImpl();

  @override
  String toString() {
    return 'FinanceTrackerEvent.fetchBudgetStatusOverTime()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBudgetStatusOverTimeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) addIncome,
    required TResult Function(double amount, String categoryType) addBudget,
    required TResult Function(
            double amount, String category, String description)
        addExpense,
    required TResult Function() getFinanceSummary,
    required TResult Function() getFinanceTransactions,
    required TResult Function() getSpendingCategories,
    required TResult Function() fetchBudgetStatusOverTime,
    required TResult Function() fetchMonthlyIncomeExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() fetchIncomes,
    required TResult Function() fetchBudgets,
  }) {
    return fetchBudgetStatusOverTime();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? addIncome,
    TResult? Function(double amount, String categoryType)? addBudget,
    TResult? Function(double amount, String category, String description)?
        addExpense,
    TResult? Function()? getFinanceSummary,
    TResult? Function()? getFinanceTransactions,
    TResult? Function()? getSpendingCategories,
    TResult? Function()? fetchBudgetStatusOverTime,
    TResult? Function()? fetchMonthlyIncomeExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? fetchIncomes,
    TResult? Function()? fetchBudgets,
  }) {
    return fetchBudgetStatusOverTime?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? addIncome,
    TResult Function(double amount, String categoryType)? addBudget,
    TResult Function(double amount, String category, String description)?
        addExpense,
    TResult Function()? getFinanceSummary,
    TResult Function()? getFinanceTransactions,
    TResult Function()? getSpendingCategories,
    TResult Function()? fetchBudgetStatusOverTime,
    TResult Function()? fetchMonthlyIncomeExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? fetchIncomes,
    TResult Function()? fetchBudgets,
    required TResult orElse(),
  }) {
    if (fetchBudgetStatusOverTime != null) {
      return fetchBudgetStatusOverTime();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(GetFinanceSummary value) getFinanceSummary,
    required TResult Function(GetFinanceTransactions value)
        getFinanceTransactions,
    required TResult Function(GetSpendingCategories value)
        getSpendingCategories,
    required TResult Function(FetchBudgetStatusOverTime value)
        fetchBudgetStatusOverTime,
    required TResult Function(FetchMonthlyIncomeExpense value)
        fetchMonthlyIncomeExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(FetchBudgets value) fetchBudgets,
  }) {
    return fetchBudgetStatusOverTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(GetFinanceSummary value)? getFinanceSummary,
    TResult? Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult? Function(GetSpendingCategories value)? getSpendingCategories,
    TResult? Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult? Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(FetchBudgets value)? fetchBudgets,
  }) {
    return fetchBudgetStatusOverTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(AddExpense value)? addExpense,
    TResult Function(GetFinanceSummary value)? getFinanceSummary,
    TResult Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult Function(GetSpendingCategories value)? getSpendingCategories,
    TResult Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(FetchBudgets value)? fetchBudgets,
    required TResult orElse(),
  }) {
    if (fetchBudgetStatusOverTime != null) {
      return fetchBudgetStatusOverTime(this);
    }
    return orElse();
  }
}

abstract class FetchBudgetStatusOverTime implements FinanceTrackerEvent {
  const factory FetchBudgetStatusOverTime() = _$FetchBudgetStatusOverTimeImpl;
}

/// @nodoc
abstract class _$$FetchMonthlyIncomeExpenseImplCopyWith<$Res> {
  factory _$$FetchMonthlyIncomeExpenseImplCopyWith(
          _$FetchMonthlyIncomeExpenseImpl value,
          $Res Function(_$FetchMonthlyIncomeExpenseImpl) then) =
      __$$FetchMonthlyIncomeExpenseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMonthlyIncomeExpenseImplCopyWithImpl<$Res>
    extends _$FinanceTrackerEventCopyWithImpl<$Res,
        _$FetchMonthlyIncomeExpenseImpl>
    implements _$$FetchMonthlyIncomeExpenseImplCopyWith<$Res> {
  __$$FetchMonthlyIncomeExpenseImplCopyWithImpl(
      _$FetchMonthlyIncomeExpenseImpl _value,
      $Res Function(_$FetchMonthlyIncomeExpenseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchMonthlyIncomeExpenseImpl implements FetchMonthlyIncomeExpense {
  const _$FetchMonthlyIncomeExpenseImpl();

  @override
  String toString() {
    return 'FinanceTrackerEvent.fetchMonthlyIncomeExpense()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMonthlyIncomeExpenseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) addIncome,
    required TResult Function(double amount, String categoryType) addBudget,
    required TResult Function(
            double amount, String category, String description)
        addExpense,
    required TResult Function() getFinanceSummary,
    required TResult Function() getFinanceTransactions,
    required TResult Function() getSpendingCategories,
    required TResult Function() fetchBudgetStatusOverTime,
    required TResult Function() fetchMonthlyIncomeExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() fetchIncomes,
    required TResult Function() fetchBudgets,
  }) {
    return fetchMonthlyIncomeExpense();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? addIncome,
    TResult? Function(double amount, String categoryType)? addBudget,
    TResult? Function(double amount, String category, String description)?
        addExpense,
    TResult? Function()? getFinanceSummary,
    TResult? Function()? getFinanceTransactions,
    TResult? Function()? getSpendingCategories,
    TResult? Function()? fetchBudgetStatusOverTime,
    TResult? Function()? fetchMonthlyIncomeExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? fetchIncomes,
    TResult? Function()? fetchBudgets,
  }) {
    return fetchMonthlyIncomeExpense?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? addIncome,
    TResult Function(double amount, String categoryType)? addBudget,
    TResult Function(double amount, String category, String description)?
        addExpense,
    TResult Function()? getFinanceSummary,
    TResult Function()? getFinanceTransactions,
    TResult Function()? getSpendingCategories,
    TResult Function()? fetchBudgetStatusOverTime,
    TResult Function()? fetchMonthlyIncomeExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? fetchIncomes,
    TResult Function()? fetchBudgets,
    required TResult orElse(),
  }) {
    if (fetchMonthlyIncomeExpense != null) {
      return fetchMonthlyIncomeExpense();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(GetFinanceSummary value) getFinanceSummary,
    required TResult Function(GetFinanceTransactions value)
        getFinanceTransactions,
    required TResult Function(GetSpendingCategories value)
        getSpendingCategories,
    required TResult Function(FetchBudgetStatusOverTime value)
        fetchBudgetStatusOverTime,
    required TResult Function(FetchMonthlyIncomeExpense value)
        fetchMonthlyIncomeExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(FetchBudgets value) fetchBudgets,
  }) {
    return fetchMonthlyIncomeExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(GetFinanceSummary value)? getFinanceSummary,
    TResult? Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult? Function(GetSpendingCategories value)? getSpendingCategories,
    TResult? Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult? Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(FetchBudgets value)? fetchBudgets,
  }) {
    return fetchMonthlyIncomeExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(AddExpense value)? addExpense,
    TResult Function(GetFinanceSummary value)? getFinanceSummary,
    TResult Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult Function(GetSpendingCategories value)? getSpendingCategories,
    TResult Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(FetchBudgets value)? fetchBudgets,
    required TResult orElse(),
  }) {
    if (fetchMonthlyIncomeExpense != null) {
      return fetchMonthlyIncomeExpense(this);
    }
    return orElse();
  }
}

abstract class FetchMonthlyIncomeExpense implements FinanceTrackerEvent {
  const factory FetchMonthlyIncomeExpense() = _$FetchMonthlyIncomeExpenseImpl;
}

/// @nodoc
abstract class _$$FetchExpensesImplCopyWith<$Res> {
  factory _$$FetchExpensesImplCopyWith(
          _$FetchExpensesImpl value, $Res Function(_$FetchExpensesImpl) then) =
      __$$FetchExpensesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchExpensesImplCopyWithImpl<$Res>
    extends _$FinanceTrackerEventCopyWithImpl<$Res, _$FetchExpensesImpl>
    implements _$$FetchExpensesImplCopyWith<$Res> {
  __$$FetchExpensesImplCopyWithImpl(
      _$FetchExpensesImpl _value, $Res Function(_$FetchExpensesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchExpensesImpl implements FetchExpenses {
  const _$FetchExpensesImpl();

  @override
  String toString() {
    return 'FinanceTrackerEvent.fetchExpenses()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchExpensesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) addIncome,
    required TResult Function(double amount, String categoryType) addBudget,
    required TResult Function(
            double amount, String category, String description)
        addExpense,
    required TResult Function() getFinanceSummary,
    required TResult Function() getFinanceTransactions,
    required TResult Function() getSpendingCategories,
    required TResult Function() fetchBudgetStatusOverTime,
    required TResult Function() fetchMonthlyIncomeExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() fetchIncomes,
    required TResult Function() fetchBudgets,
  }) {
    return fetchExpenses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? addIncome,
    TResult? Function(double amount, String categoryType)? addBudget,
    TResult? Function(double amount, String category, String description)?
        addExpense,
    TResult? Function()? getFinanceSummary,
    TResult? Function()? getFinanceTransactions,
    TResult? Function()? getSpendingCategories,
    TResult? Function()? fetchBudgetStatusOverTime,
    TResult? Function()? fetchMonthlyIncomeExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? fetchIncomes,
    TResult? Function()? fetchBudgets,
  }) {
    return fetchExpenses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? addIncome,
    TResult Function(double amount, String categoryType)? addBudget,
    TResult Function(double amount, String category, String description)?
        addExpense,
    TResult Function()? getFinanceSummary,
    TResult Function()? getFinanceTransactions,
    TResult Function()? getSpendingCategories,
    TResult Function()? fetchBudgetStatusOverTime,
    TResult Function()? fetchMonthlyIncomeExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? fetchIncomes,
    TResult Function()? fetchBudgets,
    required TResult orElse(),
  }) {
    if (fetchExpenses != null) {
      return fetchExpenses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(GetFinanceSummary value) getFinanceSummary,
    required TResult Function(GetFinanceTransactions value)
        getFinanceTransactions,
    required TResult Function(GetSpendingCategories value)
        getSpendingCategories,
    required TResult Function(FetchBudgetStatusOverTime value)
        fetchBudgetStatusOverTime,
    required TResult Function(FetchMonthlyIncomeExpense value)
        fetchMonthlyIncomeExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(FetchBudgets value) fetchBudgets,
  }) {
    return fetchExpenses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(GetFinanceSummary value)? getFinanceSummary,
    TResult? Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult? Function(GetSpendingCategories value)? getSpendingCategories,
    TResult? Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult? Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(FetchBudgets value)? fetchBudgets,
  }) {
    return fetchExpenses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(AddExpense value)? addExpense,
    TResult Function(GetFinanceSummary value)? getFinanceSummary,
    TResult Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult Function(GetSpendingCategories value)? getSpendingCategories,
    TResult Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(FetchBudgets value)? fetchBudgets,
    required TResult orElse(),
  }) {
    if (fetchExpenses != null) {
      return fetchExpenses(this);
    }
    return orElse();
  }
}

abstract class FetchExpenses implements FinanceTrackerEvent {
  const factory FetchExpenses() = _$FetchExpensesImpl;
}

/// @nodoc
abstract class _$$FetchIncomesImplCopyWith<$Res> {
  factory _$$FetchIncomesImplCopyWith(
          _$FetchIncomesImpl value, $Res Function(_$FetchIncomesImpl) then) =
      __$$FetchIncomesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchIncomesImplCopyWithImpl<$Res>
    extends _$FinanceTrackerEventCopyWithImpl<$Res, _$FetchIncomesImpl>
    implements _$$FetchIncomesImplCopyWith<$Res> {
  __$$FetchIncomesImplCopyWithImpl(
      _$FetchIncomesImpl _value, $Res Function(_$FetchIncomesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchIncomesImpl implements FetchIncomes {
  const _$FetchIncomesImpl();

  @override
  String toString() {
    return 'FinanceTrackerEvent.fetchIncomes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchIncomesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) addIncome,
    required TResult Function(double amount, String categoryType) addBudget,
    required TResult Function(
            double amount, String category, String description)
        addExpense,
    required TResult Function() getFinanceSummary,
    required TResult Function() getFinanceTransactions,
    required TResult Function() getSpendingCategories,
    required TResult Function() fetchBudgetStatusOverTime,
    required TResult Function() fetchMonthlyIncomeExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() fetchIncomes,
    required TResult Function() fetchBudgets,
  }) {
    return fetchIncomes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? addIncome,
    TResult? Function(double amount, String categoryType)? addBudget,
    TResult? Function(double amount, String category, String description)?
        addExpense,
    TResult? Function()? getFinanceSummary,
    TResult? Function()? getFinanceTransactions,
    TResult? Function()? getSpendingCategories,
    TResult? Function()? fetchBudgetStatusOverTime,
    TResult? Function()? fetchMonthlyIncomeExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? fetchIncomes,
    TResult? Function()? fetchBudgets,
  }) {
    return fetchIncomes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? addIncome,
    TResult Function(double amount, String categoryType)? addBudget,
    TResult Function(double amount, String category, String description)?
        addExpense,
    TResult Function()? getFinanceSummary,
    TResult Function()? getFinanceTransactions,
    TResult Function()? getSpendingCategories,
    TResult Function()? fetchBudgetStatusOverTime,
    TResult Function()? fetchMonthlyIncomeExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? fetchIncomes,
    TResult Function()? fetchBudgets,
    required TResult orElse(),
  }) {
    if (fetchIncomes != null) {
      return fetchIncomes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(GetFinanceSummary value) getFinanceSummary,
    required TResult Function(GetFinanceTransactions value)
        getFinanceTransactions,
    required TResult Function(GetSpendingCategories value)
        getSpendingCategories,
    required TResult Function(FetchBudgetStatusOverTime value)
        fetchBudgetStatusOverTime,
    required TResult Function(FetchMonthlyIncomeExpense value)
        fetchMonthlyIncomeExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(FetchBudgets value) fetchBudgets,
  }) {
    return fetchIncomes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(GetFinanceSummary value)? getFinanceSummary,
    TResult? Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult? Function(GetSpendingCategories value)? getSpendingCategories,
    TResult? Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult? Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(FetchBudgets value)? fetchBudgets,
  }) {
    return fetchIncomes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(AddExpense value)? addExpense,
    TResult Function(GetFinanceSummary value)? getFinanceSummary,
    TResult Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult Function(GetSpendingCategories value)? getSpendingCategories,
    TResult Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(FetchBudgets value)? fetchBudgets,
    required TResult orElse(),
  }) {
    if (fetchIncomes != null) {
      return fetchIncomes(this);
    }
    return orElse();
  }
}

abstract class FetchIncomes implements FinanceTrackerEvent {
  const factory FetchIncomes() = _$FetchIncomesImpl;
}

/// @nodoc
abstract class _$$FetchBudgetsImplCopyWith<$Res> {
  factory _$$FetchBudgetsImplCopyWith(
          _$FetchBudgetsImpl value, $Res Function(_$FetchBudgetsImpl) then) =
      __$$FetchBudgetsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchBudgetsImplCopyWithImpl<$Res>
    extends _$FinanceTrackerEventCopyWithImpl<$Res, _$FetchBudgetsImpl>
    implements _$$FetchBudgetsImplCopyWith<$Res> {
  __$$FetchBudgetsImplCopyWithImpl(
      _$FetchBudgetsImpl _value, $Res Function(_$FetchBudgetsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchBudgetsImpl implements FetchBudgets {
  const _$FetchBudgetsImpl();

  @override
  String toString() {
    return 'FinanceTrackerEvent.fetchBudgets()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchBudgetsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) addIncome,
    required TResult Function(double amount, String categoryType) addBudget,
    required TResult Function(
            double amount, String category, String description)
        addExpense,
    required TResult Function() getFinanceSummary,
    required TResult Function() getFinanceTransactions,
    required TResult Function() getSpendingCategories,
    required TResult Function() fetchBudgetStatusOverTime,
    required TResult Function() fetchMonthlyIncomeExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() fetchIncomes,
    required TResult Function() fetchBudgets,
  }) {
    return fetchBudgets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? addIncome,
    TResult? Function(double amount, String categoryType)? addBudget,
    TResult? Function(double amount, String category, String description)?
        addExpense,
    TResult? Function()? getFinanceSummary,
    TResult? Function()? getFinanceTransactions,
    TResult? Function()? getSpendingCategories,
    TResult? Function()? fetchBudgetStatusOverTime,
    TResult? Function()? fetchMonthlyIncomeExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? fetchIncomes,
    TResult? Function()? fetchBudgets,
  }) {
    return fetchBudgets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? addIncome,
    TResult Function(double amount, String categoryType)? addBudget,
    TResult Function(double amount, String category, String description)?
        addExpense,
    TResult Function()? getFinanceSummary,
    TResult Function()? getFinanceTransactions,
    TResult Function()? getSpendingCategories,
    TResult Function()? fetchBudgetStatusOverTime,
    TResult Function()? fetchMonthlyIncomeExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? fetchIncomes,
    TResult Function()? fetchBudgets,
    required TResult orElse(),
  }) {
    if (fetchBudgets != null) {
      return fetchBudgets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddIncome value) addIncome,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(GetFinanceSummary value) getFinanceSummary,
    required TResult Function(GetFinanceTransactions value)
        getFinanceTransactions,
    required TResult Function(GetSpendingCategories value)
        getSpendingCategories,
    required TResult Function(FetchBudgetStatusOverTime value)
        fetchBudgetStatusOverTime,
    required TResult Function(FetchMonthlyIncomeExpense value)
        fetchMonthlyIncomeExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(FetchBudgets value) fetchBudgets,
  }) {
    return fetchBudgets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddIncome value)? addIncome,
    TResult? Function(AddBudget value)? addBudget,
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(GetFinanceSummary value)? getFinanceSummary,
    TResult? Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult? Function(GetSpendingCategories value)? getSpendingCategories,
    TResult? Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult? Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(FetchBudgets value)? fetchBudgets,
  }) {
    return fetchBudgets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddIncome value)? addIncome,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(AddExpense value)? addExpense,
    TResult Function(GetFinanceSummary value)? getFinanceSummary,
    TResult Function(GetFinanceTransactions value)? getFinanceTransactions,
    TResult Function(GetSpendingCategories value)? getSpendingCategories,
    TResult Function(FetchBudgetStatusOverTime value)?
        fetchBudgetStatusOverTime,
    TResult Function(FetchMonthlyIncomeExpense value)?
        fetchMonthlyIncomeExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(FetchBudgets value)? fetchBudgets,
    required TResult orElse(),
  }) {
    if (fetchBudgets != null) {
      return fetchBudgets(this);
    }
    return orElse();
  }
}

abstract class FetchBudgets implements FinanceTrackerEvent {
  const factory FetchBudgets() = _$FetchBudgetsImpl;
}

/// @nodoc
mixin _$FinanceTrackerState {
  ProcessingStatus get processingStatus => throw _privateConstructorUsedError;
  CustomError get error => throw _privateConstructorUsedError;
  Map<String, dynamic> get financeSummary => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get financeTransactions =>
      throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get spendingCategories =>
      throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get fetchIncomes =>
      throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get fetchExpenses =>
      throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get fetchBudgets =>
      throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get fetchMonthlyIncomeExpense =>
      throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get fetchBudgetStatusOverTime =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FinanceTrackerStateCopyWith<FinanceTrackerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceTrackerStateCopyWith<$Res> {
  factory $FinanceTrackerStateCopyWith(
          FinanceTrackerState value, $Res Function(FinanceTrackerState) then) =
      _$FinanceTrackerStateCopyWithImpl<$Res, FinanceTrackerState>;
  @useResult
  $Res call(
      {ProcessingStatus processingStatus,
      CustomError error,
      Map<String, dynamic> financeSummary,
      List<Map<String, dynamic>> financeTransactions,
      List<Map<String, dynamic>> spendingCategories,
      List<Map<String, dynamic>> fetchIncomes,
      List<Map<String, dynamic>> fetchExpenses,
      List<Map<String, dynamic>> fetchBudgets,
      List<Map<String, dynamic>> fetchMonthlyIncomeExpense,
      List<Map<String, dynamic>> fetchBudgetStatusOverTime});
}

/// @nodoc
class _$FinanceTrackerStateCopyWithImpl<$Res, $Val extends FinanceTrackerState>
    implements $FinanceTrackerStateCopyWith<$Res> {
  _$FinanceTrackerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processingStatus = null,
    Object? error = null,
    Object? financeSummary = null,
    Object? financeTransactions = null,
    Object? spendingCategories = null,
    Object? fetchIncomes = null,
    Object? fetchExpenses = null,
    Object? fetchBudgets = null,
    Object? fetchMonthlyIncomeExpense = null,
    Object? fetchBudgetStatusOverTime = null,
  }) {
    return _then(_value.copyWith(
      processingStatus: null == processingStatus
          ? _value.processingStatus
          : processingStatus // ignore: cast_nullable_to_non_nullable
              as ProcessingStatus,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CustomError,
      financeSummary: null == financeSummary
          ? _value.financeSummary
          : financeSummary // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      financeTransactions: null == financeTransactions
          ? _value.financeTransactions
          : financeTransactions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      spendingCategories: null == spendingCategories
          ? _value.spendingCategories
          : spendingCategories // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      fetchIncomes: null == fetchIncomes
          ? _value.fetchIncomes
          : fetchIncomes // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      fetchExpenses: null == fetchExpenses
          ? _value.fetchExpenses
          : fetchExpenses // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      fetchBudgets: null == fetchBudgets
          ? _value.fetchBudgets
          : fetchBudgets // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      fetchMonthlyIncomeExpense: null == fetchMonthlyIncomeExpense
          ? _value.fetchMonthlyIncomeExpense
          : fetchMonthlyIncomeExpense // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      fetchBudgetStatusOverTime: null == fetchBudgetStatusOverTime
          ? _value.fetchBudgetStatusOverTime
          : fetchBudgetStatusOverTime // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinanceTrackerStateImplCopyWith<$Res>
    implements $FinanceTrackerStateCopyWith<$Res> {
  factory _$$FinanceTrackerStateImplCopyWith(_$FinanceTrackerStateImpl value,
          $Res Function(_$FinanceTrackerStateImpl) then) =
      __$$FinanceTrackerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProcessingStatus processingStatus,
      CustomError error,
      Map<String, dynamic> financeSummary,
      List<Map<String, dynamic>> financeTransactions,
      List<Map<String, dynamic>> spendingCategories,
      List<Map<String, dynamic>> fetchIncomes,
      List<Map<String, dynamic>> fetchExpenses,
      List<Map<String, dynamic>> fetchBudgets,
      List<Map<String, dynamic>> fetchMonthlyIncomeExpense,
      List<Map<String, dynamic>> fetchBudgetStatusOverTime});
}

/// @nodoc
class __$$FinanceTrackerStateImplCopyWithImpl<$Res>
    extends _$FinanceTrackerStateCopyWithImpl<$Res, _$FinanceTrackerStateImpl>
    implements _$$FinanceTrackerStateImplCopyWith<$Res> {
  __$$FinanceTrackerStateImplCopyWithImpl(_$FinanceTrackerStateImpl _value,
      $Res Function(_$FinanceTrackerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processingStatus = null,
    Object? error = null,
    Object? financeSummary = null,
    Object? financeTransactions = null,
    Object? spendingCategories = null,
    Object? fetchIncomes = null,
    Object? fetchExpenses = null,
    Object? fetchBudgets = null,
    Object? fetchMonthlyIncomeExpense = null,
    Object? fetchBudgetStatusOverTime = null,
  }) {
    return _then(_$FinanceTrackerStateImpl(
      processingStatus: null == processingStatus
          ? _value.processingStatus
          : processingStatus // ignore: cast_nullable_to_non_nullable
              as ProcessingStatus,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CustomError,
      financeSummary: null == financeSummary
          ? _value._financeSummary
          : financeSummary // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      financeTransactions: null == financeTransactions
          ? _value._financeTransactions
          : financeTransactions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      spendingCategories: null == spendingCategories
          ? _value._spendingCategories
          : spendingCategories // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      fetchIncomes: null == fetchIncomes
          ? _value._fetchIncomes
          : fetchIncomes // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      fetchExpenses: null == fetchExpenses
          ? _value._fetchExpenses
          : fetchExpenses // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      fetchBudgets: null == fetchBudgets
          ? _value._fetchBudgets
          : fetchBudgets // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      fetchMonthlyIncomeExpense: null == fetchMonthlyIncomeExpense
          ? _value._fetchMonthlyIncomeExpense
          : fetchMonthlyIncomeExpense // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      fetchBudgetStatusOverTime: null == fetchBudgetStatusOverTime
          ? _value._fetchBudgetStatusOverTime
          : fetchBudgetStatusOverTime // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$FinanceTrackerStateImpl implements _FinanceTrackerState {
  const _$FinanceTrackerStateImpl(
      {required this.processingStatus,
      required this.error,
      required final Map<String, dynamic> financeSummary,
      required final List<Map<String, dynamic>> financeTransactions,
      required final List<Map<String, dynamic>> spendingCategories,
      required final List<Map<String, dynamic>> fetchIncomes,
      required final List<Map<String, dynamic>> fetchExpenses,
      required final List<Map<String, dynamic>> fetchBudgets,
      required final List<Map<String, dynamic>> fetchMonthlyIncomeExpense,
      required final List<Map<String, dynamic>> fetchBudgetStatusOverTime})
      : _financeSummary = financeSummary,
        _financeTransactions = financeTransactions,
        _spendingCategories = spendingCategories,
        _fetchIncomes = fetchIncomes,
        _fetchExpenses = fetchExpenses,
        _fetchBudgets = fetchBudgets,
        _fetchMonthlyIncomeExpense = fetchMonthlyIncomeExpense,
        _fetchBudgetStatusOverTime = fetchBudgetStatusOverTime;

  @override
  final ProcessingStatus processingStatus;
  @override
  final CustomError error;
  final Map<String, dynamic> _financeSummary;
  @override
  Map<String, dynamic> get financeSummary {
    if (_financeSummary is EqualUnmodifiableMapView) return _financeSummary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_financeSummary);
  }

  final List<Map<String, dynamic>> _financeTransactions;
  @override
  List<Map<String, dynamic>> get financeTransactions {
    if (_financeTransactions is EqualUnmodifiableListView)
      return _financeTransactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_financeTransactions);
  }

  final List<Map<String, dynamic>> _spendingCategories;
  @override
  List<Map<String, dynamic>> get spendingCategories {
    if (_spendingCategories is EqualUnmodifiableListView)
      return _spendingCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spendingCategories);
  }

  final List<Map<String, dynamic>> _fetchIncomes;
  @override
  List<Map<String, dynamic>> get fetchIncomes {
    if (_fetchIncomes is EqualUnmodifiableListView) return _fetchIncomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchIncomes);
  }

  final List<Map<String, dynamic>> _fetchExpenses;
  @override
  List<Map<String, dynamic>> get fetchExpenses {
    if (_fetchExpenses is EqualUnmodifiableListView) return _fetchExpenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchExpenses);
  }

  final List<Map<String, dynamic>> _fetchBudgets;
  @override
  List<Map<String, dynamic>> get fetchBudgets {
    if (_fetchBudgets is EqualUnmodifiableListView) return _fetchBudgets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchBudgets);
  }

  final List<Map<String, dynamic>> _fetchMonthlyIncomeExpense;
  @override
  List<Map<String, dynamic>> get fetchMonthlyIncomeExpense {
    if (_fetchMonthlyIncomeExpense is EqualUnmodifiableListView)
      return _fetchMonthlyIncomeExpense;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchMonthlyIncomeExpense);
  }

  final List<Map<String, dynamic>> _fetchBudgetStatusOverTime;
  @override
  List<Map<String, dynamic>> get fetchBudgetStatusOverTime {
    if (_fetchBudgetStatusOverTime is EqualUnmodifiableListView)
      return _fetchBudgetStatusOverTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchBudgetStatusOverTime);
  }

  @override
  String toString() {
    return 'FinanceTrackerState(processingStatus: $processingStatus, error: $error, financeSummary: $financeSummary, financeTransactions: $financeTransactions, spendingCategories: $spendingCategories, fetchIncomes: $fetchIncomes, fetchExpenses: $fetchExpenses, fetchBudgets: $fetchBudgets, fetchMonthlyIncomeExpense: $fetchMonthlyIncomeExpense, fetchBudgetStatusOverTime: $fetchBudgetStatusOverTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceTrackerStateImpl &&
            (identical(other.processingStatus, processingStatus) ||
                other.processingStatus == processingStatus) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._financeSummary, _financeSummary) &&
            const DeepCollectionEquality()
                .equals(other._financeTransactions, _financeTransactions) &&
            const DeepCollectionEquality()
                .equals(other._spendingCategories, _spendingCategories) &&
            const DeepCollectionEquality()
                .equals(other._fetchIncomes, _fetchIncomes) &&
            const DeepCollectionEquality()
                .equals(other._fetchExpenses, _fetchExpenses) &&
            const DeepCollectionEquality()
                .equals(other._fetchBudgets, _fetchBudgets) &&
            const DeepCollectionEquality().equals(
                other._fetchMonthlyIncomeExpense, _fetchMonthlyIncomeExpense) &&
            const DeepCollectionEquality().equals(
                other._fetchBudgetStatusOverTime, _fetchBudgetStatusOverTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      processingStatus,
      error,
      const DeepCollectionEquality().hash(_financeSummary),
      const DeepCollectionEquality().hash(_financeTransactions),
      const DeepCollectionEquality().hash(_spendingCategories),
      const DeepCollectionEquality().hash(_fetchIncomes),
      const DeepCollectionEquality().hash(_fetchExpenses),
      const DeepCollectionEquality().hash(_fetchBudgets),
      const DeepCollectionEquality().hash(_fetchMonthlyIncomeExpense),
      const DeepCollectionEquality().hash(_fetchBudgetStatusOverTime));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceTrackerStateImplCopyWith<_$FinanceTrackerStateImpl> get copyWith =>
      __$$FinanceTrackerStateImplCopyWithImpl<_$FinanceTrackerStateImpl>(
          this, _$identity);
}

abstract class _FinanceTrackerState implements FinanceTrackerState {
  const factory _FinanceTrackerState(
      {required final ProcessingStatus processingStatus,
      required final CustomError error,
      required final Map<String, dynamic> financeSummary,
      required final List<Map<String, dynamic>> financeTransactions,
      required final List<Map<String, dynamic>> spendingCategories,
      required final List<Map<String, dynamic>> fetchIncomes,
      required final List<Map<String, dynamic>> fetchExpenses,
      required final List<Map<String, dynamic>> fetchBudgets,
      required final List<Map<String, dynamic>> fetchMonthlyIncomeExpense,
      required final List<Map<String, dynamic>>
          fetchBudgetStatusOverTime}) = _$FinanceTrackerStateImpl;

  @override
  ProcessingStatus get processingStatus;
  @override
  CustomError get error;
  @override
  Map<String, dynamic> get financeSummary;
  @override
  List<Map<String, dynamic>> get financeTransactions;
  @override
  List<Map<String, dynamic>> get spendingCategories;
  @override
  List<Map<String, dynamic>> get fetchIncomes;
  @override
  List<Map<String, dynamic>> get fetchExpenses;
  @override
  List<Map<String, dynamic>> get fetchBudgets;
  @override
  List<Map<String, dynamic>> get fetchMonthlyIncomeExpense;
  @override
  List<Map<String, dynamic>> get fetchBudgetStatusOverTime;
  @override
  @JsonKey(ignore: true)
  _$$FinanceTrackerStateImplCopyWith<_$FinanceTrackerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

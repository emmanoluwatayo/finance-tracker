// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:personal_finance_tracker/application/bloc/finance_tracker/finance_tracker_bloc.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/shared/enums/processing_status.dart';
import 'package:personal_finance_tracker/core/shared/enums/status.dart';
import 'package:personal_finance_tracker/core/theme/font_manager.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';
import 'package:personal_finance_tracker/core/utilities/compare.dart';
import 'package:personal_finance_tracker/domain/data_source/transaction_data.dart';
import 'package:personal_finance_tracker/presentation/core/toast_info.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  int _rowsPerPage = 5;
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  void initState() {
    super.initState();
    // Dispatch the event to fetch pharmacy inventory items
    context.read<FinanceTrackerBloc>().add(
          const GetFinanceTransactions(),
        );
  }

  List<DataColumn> get columns => [
        DataColumn(
          label: const Text("S/N"),
          numeric: true,
          onSort: (columnIndex, ascending) {
            setState(
              () {
                _sortColumnIndex = columnIndex;
                _sortAscending = ascending;
              },
            );
          },
        ),
        DataColumn(
          label: const Text("Date"),
          onSort: (columnIndex, ascending) {
            setState(
              () {
                _sortColumnIndex = columnIndex;
                _sortAscending = ascending;
              },
            );
          },
        ),
        DataColumn(
          label: const Text("Category"),
          onSort: (columnIndex, ascending) {
            setState(
              () {
                _sortColumnIndex = columnIndex;
                _sortAscending = ascending;
              },
            );
          },
        ),
        DataColumn(
          label: const Text("Description"),
          onSort: (columnIndex, ascending) {
            setState(
              () {
                _sortColumnIndex = columnIndex;
                _sortAscending = ascending;
              },
            );
          },
        ),
        DataColumn(
          label: const Text("Amount"),
          onSort: (columnIndex, ascending) {
            setState(
              () {
                _sortColumnIndex = columnIndex;
                _sortAscending = ascending;
              },
            );
          },
        ),
        DataColumn(
          label: const Text("Status"),
          onSort: (columnIndex, ascending) {
            setState(
              () {
                _sortColumnIndex = columnIndex;
                _sortAscending = ascending;
              },
            );
          },
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FinanceTrackerBloc, FinanceTrackerState>(
      builder: (context, state) {
        if (state.processingStatus == ProcessingStatus.waiting) {
          return const Center(
            child: SpinKitCircle(
              color: AppColors.primaryColor,
            ),
          );
        } else if (state.processingStatus == ProcessingStatus.error) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                toastInfo(
                  msg: 'Ops! ${state.error.errorMsg}',
                  status: Status.error,
                ),
              ],
            ),
          );
        } else if (state.financeTransactions.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'No Transactions data available',
                  style: getRegularStyle(color: AppColors.greyText),
                ),
              ],
            ),
          );
        }

        // Create a mutable copy of the inventory data
        List<Map<String, dynamic>> transactions =
            List.from(state.financeTransactions); // <-- Copy the list
        if (_sortColumnIndex != null) {
          transactions.sort((a, b) {
            switch (_sortColumnIndex) {
              case 0:
                return compare<String>(
                  a['sn'] ?? '',
                  b['sn'] ?? '',
                  _sortAscending,
                );
              case 1:
                return compare<String>(
                  a['timestamp'] ?? '',
                  b['timestamp'] ?? '',
                  _sortAscending,
                );
              case 2:
                return compare<String>(
                  a['category'] ?? '',
                  b['category'] ?? '',
                  _sortAscending,
                );
              case 3:
                return compare<String>(
                  a['description'] ?? 'N/A',
                  b['description'] ?? 'N/A',
                  _sortAscending,
                );
              case 4:
                return compare<double>(
                  (a['amount'] as double?) ?? 0.0, // Default to 0.0
                  (b['amount'] as double?) ?? 0.0,
                  _sortAscending,
                );
              case 5:
                return compare<String>(
                  a['type'] ?? '',
                  b['type'] ?? '',
                  _sortAscending,
                );
              default:
                return 0;
            }
          });
        }

        return Scaffold(
          backgroundColor: AppColors.litePrimaryColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 26,
                        right: 26,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(30.h),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Transactions',
                              style: getRegularStyle(
                                color: AppColors.vistaBlackColor,
                                fontSize: FontSize.s16,
                              ),
                            ),
                          ),
                          Gap(60.h),
                          SizedBox(
                            width: double.infinity,
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                dataTableTheme: DataTableThemeData(
                                  headingTextStyle: getRegularStyle(
                                    fontSize: FontSize.s16,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryColor,
                                  ),
                                  headingRowColor:
                                      MaterialStateColor.resolveWith(
                                    (states) => Colors.white,
                                  ),
                                  dataRowColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.white,
                                  ),
                                  dividerThickness: 0.5,
                                ),
                              ),
                              child: PaginatedDataTable(
                                // arrowHeadColor: Colors.grey,
                                showFirstLastButtons: true,
                                showEmptyRows: true,
                                rowsPerPage: _rowsPerPage,
                                onRowsPerPageChanged: (int? value) {
                                  setState(() {
                                    _rowsPerPage = value!;
                                  });
                                },
                                sortColumnIndex: _sortColumnIndex,
                                sortAscending: _sortAscending,
                                availableRowsPerPage: const [
                                  5,
                                  10,
                                  20,
                                  50,
                                  100,
                                ],
                                columns: columns,
                                source: TransactionData(
                                  transactions.asMap().entries.map((entry) {
                                    int index = entry
                                        .key; // This is the index in the list
                                    Map<String, dynamic> staff = entry.value;
                                    staff['sn'] = (index + 1)
                                        .toString(); // Add serial number to staff data
                                    return staff;
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                          Gap(200.h),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

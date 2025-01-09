import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/theme/font_manager.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';

class TransactionData extends DataTableSource {
  final List<Map<String, dynamic>> data;

  TransactionData(
    this.data,
  );

  @override
  DataRow? getRow(int index) {
    if (index >= data.length) return null;
    final patient = data[index];

    final timestamp =
        patient['timestamp'] ?? Timestamp.now(); // Default to current time

    final formattedDate = DateFormat('yyyy-MM-dd').format(timestamp.toDate());

    // Determine the color based on the amount
    Color getStatusColor(String status) {
      switch (status) {
        case 'expense':
          return AppColors.vistaRed;
        case 'income':
          return AppColors.vistaGreen;
        default:
          return Colors.black; // Default color
      }
    }

    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(
          Text(
            patient['sn'].toString(),
            style: getRegularStyle(
              color: const Color(0XFF3B3535),
              fontSize: FontSize.s12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        DataCell(
          Text(
            formattedDate,
            style: getRegularStyle(
              color: AppColors.cashAtmBorderColor,
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        DataCell(
          Text(
            patient['category'] ?? 'N/A',
            style: getRegularStyle(
              color: AppColors.cashAtmBorderColor,
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        DataCell(
          Text(
            patient['description'] ?? 'N/A',
            style: getRegularStyle(
              color: AppColors.cashAtmBorderColor,
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        DataCell(
          Text(
            patient['amount'].toString(),
            style: getRegularStyle(
              color: AppColors.cashAtmBorderColor,
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        DataCell(
          Text(
            patient['type'],
            style: getRegularStyle(
              color: getStatusColor(
                patient['type'],
              ),
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}

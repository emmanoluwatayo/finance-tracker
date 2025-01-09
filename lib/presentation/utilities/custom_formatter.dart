import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CurrencyInputFormatter extends TextInputFormatter {
  final String locale;
  final String currencySymbol;

  CurrencyInputFormatter({this.locale = 'en_US', this.currencySymbol = '\$'});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }

    // Remove all non-digit characters
    final numericValue = newValue.text.replaceAll(RegExp(r'[^\d]'), '');
    final doubleValue = double.tryParse(numericValue) ?? 0;

    // Format as currency
    final formattedValue = NumberFormat.currency(
      locale: locale,
      symbol: currencySymbol,
      decimalDigits: 0, // Adjust as needed
    ).format(doubleValue);

    return newValue.copyWith(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: formattedValue.length),
    );
  }
}

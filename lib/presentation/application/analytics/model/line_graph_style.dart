import 'package:flutter/material.dart';

class LineGraphStyle {
  final Color safeColor;
  final Color inRangeColor;
  final Color overSpentColor;

  const LineGraphStyle({
    required this.safeColor,
    required this.inRangeColor,
    required this.overSpentColor,
  });
}
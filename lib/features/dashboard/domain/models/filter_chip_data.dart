import 'package:flutter/material.dart';

class FilterChipData {
  final String label;
  final bool isSelected;

  const FilterChipData({
    required this.label,
    this.isSelected = false,
  });

  FilterChipData copy({
    String? label,
    Color? color,
    bool? isSelected,
  }) =>
      FilterChipData(
        label: label ?? this.label,
        isSelected: isSelected ?? this.isSelected,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FilterChipData &&
          runtimeType == other.runtimeType &&
          label == other.label &&
          isSelected == other.isSelected;

  @override
  int get hashCode => label.hashCode ^ isSelected.hashCode;
}

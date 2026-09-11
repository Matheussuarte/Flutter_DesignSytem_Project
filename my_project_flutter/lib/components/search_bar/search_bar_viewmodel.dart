import 'package:flutter/material.dart';

enum SearchBarType {
  standard,
  active,
  filled,
  disabled,
}

class SearchBarViewModel {
  final String hintText;
  final SearchBarType type;
  final String? initialText;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;

  const SearchBarViewModel({
    required this.hintText,
    required this.type,
    this.initialText,
    this.onTap,
    this.onChanged,
  });
}
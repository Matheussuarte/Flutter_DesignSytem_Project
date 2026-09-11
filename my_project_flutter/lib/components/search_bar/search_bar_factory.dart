import 'package:flutter/material.dart';

import 'search_bar_component.dart';
import 'search_bar_viewmodel.dart';

class SearchBarFactory {
  static Widget create({
    required String hintText,
    required SearchBarType type,
    String? initialText,
    VoidCallback? onTap,
    ValueChanged<String>? onChanged,
  }) {
    final viewModel = SearchBarViewModel(
      hintText: hintText,
      type: type,
      initialText: initialText,
      onTap: onTap,
      onChanged: onChanged,
    );

    return SearchBarComponent(
      viewModel: viewModel,
    );
  }
}
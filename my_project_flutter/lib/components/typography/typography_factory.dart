import 'package:flutter/material.dart';

import 'typography_component.dart';
import 'typography_viewmodel.dart';

class TypographyFactory {
  static Widget create({
    required String text,
    required TypographyType type,
  }) {
    final viewModel = TypographyViewModel(
      text: text,
      type: type,
    );

    return TypographyComponent(
      viewModel: viewModel,
    );
  }
}
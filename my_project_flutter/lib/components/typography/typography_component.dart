import 'package:flutter/material.dart';

import 'typography_viewmodel.dart';

class TypographyComponent extends StatelessWidget {
  final TypographyViewModel viewModel;

  const TypographyComponent({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      viewModel.text,
      style: _getTextStyle(viewModel.type),
    );
  }

  TextStyle _getTextStyle(TypographyType type) {
    switch (type) {
      case TypographyType.largeTitleBold:
        return const TextStyle(
          fontSize: 32,
          height: 40 / 32,
          fontWeight: FontWeight.bold,
          letterSpacing: -0.75,
          color: Color(0xFF0F172A),
        );

      case TypographyType.title1Bold:
        return const TextStyle(
          fontSize: 20,
          height: 24 / 20,
          fontWeight: FontWeight.bold,
          letterSpacing: -0.35,
          color: Color(0xFF0F172A),
        );

      case TypographyType.title2Regular:
        return const TextStyle(
          fontSize: 17,
          height: 24 / 17,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.45,
          color: Color(0xFF0F172A),
        );

      case TypographyType.title2Medium:
        return const TextStyle(
          fontSize: 17,
          height: 24 / 17,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.35,
          color: Color(0xFF0F172A),
        );

      case TypographyType.title2Semibold:
        return const TextStyle(
          fontSize: 17,
          height: 24 / 17,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.30,
          color: Color(0xFF0F172A),
        );

      case TypographyType.title2Bold:
        return const TextStyle(
          fontSize: 17,
          height: 24 / 17,
          fontWeight: FontWeight.bold,
          letterSpacing: -0.20,
          color: Color(0xFF0F172A),
        );

      case TypographyType.headlineRegular:
        return const TextStyle(
          fontSize: 16,
          height: 20 / 16,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.35,
          color: Color(0xFF0F172A),
        );

      case TypographyType.headlineMedium:
        return const TextStyle(
          fontSize: 16,
          height: 20 / 16,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.25,
          color: Color(0xFF0F172A),
        );

      case TypographyType.textRegular:
        return const TextStyle(
          fontSize: 15,
          height: 20 / 15,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.30,
          color: Color(0xFF0F172A),
        );

      case TypographyType.textMedium:
        return const TextStyle(
          fontSize: 15,
          height: 20 / 15,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.20,
          color: Color(0xFF0F172A),
        );

      case TypographyType.textSemibold:
        return const TextStyle(
          fontSize: 15,
          height: 20 / 15,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.15,
          color: Color(0xFF0F172A),
        );

      case TypographyType.subheadRegular:
        return const TextStyle(
          fontSize: 14,
          height: 20 / 14,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.20,
          color: Color(0xFF0F172A),
        );

      case TypographyType.subheadMedium:
        return const TextStyle(
          fontSize: 14,
          height: 20 / 14,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.10,
          color: Color(0xFF0F172A),
        );

      case TypographyType.subheadSemibold:
        return const TextStyle(
          fontSize: 14,
          height: 20 / 14,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.05,
          color: Color(0xFF0F172A),
        );

      case TypographyType.caption1Regular:
        return const TextStyle(
          fontSize: 13,
          height: 16 / 13,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.10,
          color: Color(0xFF0F172A),
        );

      case TypographyType.caption1Medium:
        return const TextStyle(
          fontSize: 13,
          height: 16 / 13,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.05,
          color: Color(0xFF0F172A),
        );

      case TypographyType.caption1Semibold:
        return const TextStyle(
          fontSize: 13,
          height: 16 / 13,
          fontWeight: FontWeight.w600,
          letterSpacing: 0,
          color: Color(0xFF0F172A),
        );

      case TypographyType.caption2Medium:
        return const TextStyle(
          fontSize: 12,
          height: 16 / 12,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.05,
          color: Color(0xFF0F172A),
        );

      case TypographyType.caption2Semibold:
        return const TextStyle(
          fontSize: 12,
          height: 16 / 12,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.10,
          color: Color(0xFF0F172A),
        );

      case TypographyType.caption3Semibold:
        return const TextStyle(
          fontSize: 11,
          height: 16 / 11,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.15,
          color: Color(0xFF0F172A),
        );
    }
  }
}
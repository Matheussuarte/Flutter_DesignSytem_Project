import 'package:flutter/material.dart';
import 'app_button.dart';
import 'button_type.dart';

abstract class ButtonFactory {
  static AppButton create({
    required ButtonType type,
    required VoidCallback onPressed,
  }) {
    switch (type) {
      case ButtonType.primary:
        return AppButton(
          text: 'Primary',
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          width: 220,
          height: 60,
          onPressed: onPressed,
        );

      case ButtonType.secondary:
        return AppButton(
          text: 'Secondary',
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          width: 200,
          height: 55,
          onPressed: onPressed,
        );

      case ButtonType.danger:
        return AppButton(
          text: 'Danger',
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          width: 180,
          height: 50,
          onPressed: onPressed,
        );
    }
  }
}
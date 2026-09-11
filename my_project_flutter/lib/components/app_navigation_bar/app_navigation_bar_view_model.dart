import 'package:flutter/material.dart';

class AppNavigationItem {
  final IconData icon;
  final IconData selectedIcon;
  final String label;

  const AppNavigationItem({
    required this.icon,
    required this.selectedIcon,
    required this.label,
  });
}

class AppNavigationBarViewModel {
  final int currentIndex;
  final List<AppNavigationItem> items;
  final ValueChanged<int> onSelected;

  const AppNavigationBarViewModel({
    required this.currentIndex,
    required this.items,
    required this.onSelected,
  });
}
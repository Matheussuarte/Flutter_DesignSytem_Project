import 'package:flutter/material.dart';

import 'app_navigation_bar_view_model.dart';

class AppNavigationBar extends StatelessWidget {
  final AppNavigationBarViewModel viewModel;

  const AppNavigationBar({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: viewModel.currentIndex,
      onDestinationSelected: viewModel.onSelected,

      destinations: viewModel.items.map((item) {
        return NavigationDestination(
          icon: Icon(item.icon),
          selectedIcon: Icon(item.selectedIcon),
          label: item.label,
        );
      }).toList(),
    );
  }
}
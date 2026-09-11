import 'package:flutter/material.dart';

import 'app_navigation_bar.dart';
import 'app_navigation_bar_view_model.dart';

class AppNavigationBarFactory {
  static AppNavigationBar main({
    required int currentIndex,
    required ValueChanged<int> onSelected,
  }) {
    return AppNavigationBar(
      viewModel: AppNavigationBarViewModel(
        currentIndex: currentIndex,
        onSelected: onSelected,
        items: const [
          AppNavigationItem(
            icon: Icons.home_outlined,
            selectedIcon: Icons.home,
            label: 'Home',
          ),
          AppNavigationItem(
            icon: Icons.favorite_border,
            selectedIcon: Icons.favorite,
            label: 'Favorites',
          ),
          AppNavigationItem(
            icon: Icons.shopping_cart_outlined,
            selectedIcon: Icons.shopping_cart,
            label: 'Cart',
          ),
          AppNavigationItem(
            icon: Icons.person_outline,
            selectedIcon: Icons.person,
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
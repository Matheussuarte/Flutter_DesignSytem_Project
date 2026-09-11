import 'package:flutter/material.dart';

import 'app_navigation_bar.dart';
import 'app_navigation_bar_view_model.dart';

class AppNavigationBarFactory {

  // -------------------------
  // 5 ITENS
  // -------------------------

  static AppNavigationBar fiveItems({
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
            label: 'Tab 1',
          ),
          AppNavigationItem(
            icon: Icons.favorite_border,
            selectedIcon: Icons.favorite,
            label: 'Tab 2',
          ),
          AppNavigationItem(
            icon: Icons.shopping_cart_outlined,
            selectedIcon: Icons.shopping_cart,
            label: 'Tab 3',
          ),
          AppNavigationItem(
            icon: Icons.bookmark_border,
            selectedIcon: Icons.bookmark,
            label: 'Tab 4',
          ),
          AppNavigationItem(
            icon: Icons.person_outline,
            selectedIcon: Icons.person,
            label: 'Tab 5',
          ),
        ],
      ),
    );
  }

  // -------------------------
  // 4 ITENS
  // -------------------------

  static AppNavigationBar fourItems({
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
            label: 'Tab 1',
          ),
          AppNavigationItem(
            icon: Icons.favorite_border,
            selectedIcon: Icons.favorite,
            label: 'Tab 2',
          ),
          AppNavigationItem(
            icon: Icons.shopping_cart_outlined,
            selectedIcon: Icons.shopping_cart,
            label: 'Tab 3',
          ),
          AppNavigationItem(
            icon: Icons.bookmark_border,
            selectedIcon: Icons.bookmark,
            label: 'Tab 4',
          ),
        ],
      ),
    );
  }

  // -------------------------
  // 3 ITENS
  // -------------------------

  static AppNavigationBar threeItems({
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
            label: 'Tab 1',
          ),
          AppNavigationItem(
            icon: Icons.favorite_border,
            selectedIcon: Icons.favorite,
            label: 'Tab 2',
          ),
          AppNavigationItem(
            icon: Icons.shopping_cart_outlined,
            selectedIcon: Icons.shopping_cart,
            label: 'Tab 3',
          ),
        ],
      ),
    );
  }
}
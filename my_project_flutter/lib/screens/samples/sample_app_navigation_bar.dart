import 'package:flutter/material.dart';

import '../../components/app_navigation_bar/app_navigation_bar_factory.dart';

class SampleAppNavigationBarScreen extends StatefulWidget {
  const SampleAppNavigationBarScreen({super.key});

  @override
  State<SampleAppNavigationBarScreen> createState() =>
      _SampleAppNavigationBarScreenState();
}

class _SampleAppNavigationBarScreenState
    extends State<SampleAppNavigationBarScreen> {

  int fiveItemsIndex = 0;
  int fourItemsIndex = 0;
  int threeItemsIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Navigation Bar'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [

          // ============================================
          // 5 ITENS
          // ============================================

          const Text(
            'Navigation Bar - 5 itens',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            'Item selecionado: ${fiveItemsIndex + 1}',
          ),

          const SizedBox(height: 12),

          AppNavigationBarFactory.fiveItems(
            currentIndex: fiveItemsIndex,

            onSelected: (index) {
              setState(() {
                fiveItemsIndex = index;
              });
            },
          ),

          const SizedBox(height: 40),

          // ============================================
          // 4 ITENS
          // ============================================

          const Text(
            'Navigation Bar - 4 itens',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            'Item selecionado: ${fourItemsIndex + 1}',
          ),

          const SizedBox(height: 12),

          AppNavigationBarFactory.fourItems(
            currentIndex: fourItemsIndex,

            onSelected: (index) {
              setState(() {
                fourItemsIndex = index;
              });
            },
          ),

          const SizedBox(height: 40),

          // ============================================
          // 3 ITENS
          // ============================================

          const Text(
            'Navigation Bar - 3 itens',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            'Item selecionado: ${threeItemsIndex + 1}',
          ),

          const SizedBox(height: 12),

          AppNavigationBarFactory.threeItems(
            currentIndex: threeItemsIndex,

            onSelected: (index) {
              setState(() {
                threeItemsIndex = index;
              });
            },
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
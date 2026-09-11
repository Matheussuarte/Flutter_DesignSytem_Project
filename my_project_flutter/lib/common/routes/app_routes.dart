import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';
import '../../screens/samples/sample_search_bar_screen.dart';
import '../../screens/samples/sample_typography_screen.dart';

class AppRoutes {
  static const String home = '/';

  static const String typographySample = '/typography-sample';

  static const String searchBarSample = '/search-bar-sample';

  static Map<String, WidgetBuilder> get routes {
    return {
      home: (context) => const HomeScreen(),

      typographySample: (context) =>
      const SampleTypographyScreen(),

      searchBarSample: (context) =>
      const SampleSearchBarScreen(),
    };
  }
}
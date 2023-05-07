import 'package:flutter/material.dart';

import '../../../Features/Splash/presentation/views/splash_view.dart';
import '../../../Features/home/presentation/views/book_details_view.dart';
import '../../../Features/home/presentation/views/home_view.dart';
import '../../../Features/search/presentation/views/search_view.dart';
import '../constants.dart';

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;

    switch (routeSettings.name) {
      case initialRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case kSearchView:
        return MaterialPageRoute(builder: (_) => const SearchView());
      case kHomeView:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case kBookDetailsView:
        return MaterialPageRoute(builder: (_) => const BookDetailsView());

      default:
        return null;
    }
  }
}

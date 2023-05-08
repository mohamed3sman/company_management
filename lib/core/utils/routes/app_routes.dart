import 'package:fingerPrint/Features/home/presentation/views/introduction_screen.dart';
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
      case kSearchScreen:
        return MaterialPageRoute(builder: (_) => const SearchView());
      case kHomeScreen:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case kBookDetailsScreen:
        return MaterialPageRoute(builder: (_) => const BookDetailsView());
    case kIntroScreen:
        return MaterialPageRoute(builder: (_) => const IntroScreen());

      default:
        return null;
    }
  }
}

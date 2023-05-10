import 'package:fingerPrint/Features/bottom_nav/presentation/screens/bottom_nav.dart';
import 'package:fingerPrint/Features/edit_profile/presentation/screens/edit_profile_screen.dart';
import 'package:fingerPrint/Features/langauge/presentation/views/language_screen.dart';
import 'package:fingerPrint/Features/login/login_screen.dart';
import 'package:fingerPrint/Features/my_orders/presentation/screens/my_orders_screen.dart';
import 'package:fingerPrint/Features/vacation_request/presentation/screens/vacation_request_screen.dart';
import 'package:flutter/material.dart';

import '../../../Features/Splash/presentation/views/splash_view.dart';
import '../../../Features/home/presentation/views/book_details_view.dart';
import '../../../Features/home/presentation/views/home_view.dart';
import '../../../Features/introduction/presentation/intro_screen.dart';
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
      case KBottomNav:
        return MaterialPageRoute(builder: (_) => const BottomNav());
      case kHomeScreen:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case kBookDetailsScreen:
        return MaterialPageRoute(builder: (_) => const BookDetailsView());
      case kIntroScreen:
        return MaterialPageRoute(builder: (_) => const IntroScreen());
      case kLanguageScreen:
        return MaterialPageRoute(builder: (_) => const LanguageScreen());
      case kLoginScreenForm:
        return MaterialPageRoute(
          builder: (_) => const LoginViewForm(),
        );
      case kMyOrdersScreen:
        return MaterialPageRoute(
          builder: (_) => const MyOrdersScreen(),
        );
      case kContactUsScreen:
        return MaterialPageRoute(
          builder: (_) => const MyOrdersScreen(),
        );
      case kEditProfileScreen:
        return MaterialPageRoute(
          builder: (_) => const EditProfileScreen(),
        );
      case kVacationRequestScreen:
        return MaterialPageRoute(
          builder: (_) => const VacationRequestScreen(),
        );

      default:
        return null;
    }
  }
}

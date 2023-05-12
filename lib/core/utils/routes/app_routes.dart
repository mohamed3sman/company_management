import 'package:fingerPrint/Features/attendance_view/attendance_view.dart';
import 'package:fingerPrint/Features/bottom_nav/presentation/screens/bottom_nav.dart';
import 'package:fingerPrint/Features/contact_us/presentation/screens/contact_us_screen.dart';
import 'package:fingerPrint/Features/edit_profile/presentation/screens/edit_profile_screen.dart';
import 'package:fingerPrint/Features/langauge/presentation/views/language_screen.dart';
import 'package:fingerPrint/Features/login_view/login_view.dart';
import 'package:fingerPrint/Features/personal_account_view/personal_account_view.dart';
import 'package:fingerPrint/Features/register_view/register_view.dart';
import 'package:fingerPrint/Features/vacation_view/vacation_view.dart';
import 'package:fingerPrint/Features/vacation_view/widgets/current_tap.dart';
import 'package:fingerPrint/Features/vacation_view/widgets/rejected_tap.dart';
import 'package:fingerPrint/Features/vacation_view/widgets/accepted_tap.dart';
import 'package:fingerPrint/Features/verification_view/verification_view.dart';
import 'package:fingerPrint/Features/my_orders/presentation/screens/my_orders_screen.dart';
import 'package:fingerPrint/Features/permission_request/presentation/screens/permission_request_screen.dart';
import 'package:fingerPrint/Features/vacation_request/presentation/screens/vacation_request_screen.dart';
import 'package:flutter/material.dart';

import '../../../Features/Splash/presentation/views/splash_view.dart';
import '../../../Features/home/presentation/views/book_details_view.dart';
import '../../../Features/home/presentation/views/home_view.dart';
import '../../../Features/introduction/presentation/intro_screen.dart';
import '../../../Features/search/presentation/views/search_view.dart';
import '../../../Features/table_view/table_view.dart';
import '../constants.dart';

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;

    switch (routeSettings.name) {
      case initialRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case kSearchScreen:
        return MaterialPageRoute(builder: (_) => const SearchView());
      case kBottomNav:
        return MaterialPageRoute(builder: (_) => const BottomNav());
      case kHomeScreen:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case kBookDetailsScreen:
        return MaterialPageRoute(builder: (_) => const BookDetailsView());
      case kIntroScreen:
        return MaterialPageRoute(builder: (_) => const IntroScreen());
      case kLanguageScreen:
        return MaterialPageRoute(builder: (_) => const LanguageScreen());
      case kRegisterScreen:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case kVerificationScreen:
        return MaterialPageRoute(builder: (_) => const VerificationView());
      case kTapBarScreen:
        return MaterialPageRoute(builder: (_) => const VacationView());
      case kCurrentTapScreen:
        return MaterialPageRoute(builder: (_) => const CurrentTap());
      case kUpComingTapScreen:
        return MaterialPageRoute(builder: (_) => const AcceptedTap());
      case kRejectedTapScreen:
        return MaterialPageRoute(builder: (_) => const RejectedTap());
      case kLoginScreenForm:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case kAttendanceScreen:
        return MaterialPageRoute(
          builder: (_) => const AttendanceView(),
        );
      case kMyOrdersScreen:
        return MaterialPageRoute(
          builder: (_) => const MyOrdersScreen(),
        );
      case kContactUsScreen:
        return MaterialPageRoute(
          builder: (_) => const ContactUsScreen(),
        );
      case kEditProfileScreen:
        return MaterialPageRoute(
          builder: (_) => const EditProfileScreen(),
        );
      case kVacationRquestScreen:
        return MaterialPageRoute(
          builder: (_) => const VacationRequestScreen(),
        );
      case kPermissionRquestScreen:
        return MaterialPageRoute(
          builder: (_) => const PermissinRequestScreen(),
        );
      case kDataTableScreen:
        return MaterialPageRoute(
          builder: (_) => const DataTableView(),
        );
      case KPersonalAccountView:
        return MaterialPageRoute(
          builder: (_) => const PersonalAccountView(),
        );

      default:
        return null;
    }
  }
}

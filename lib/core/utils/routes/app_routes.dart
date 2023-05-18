import 'package:fingerPrint/Features/app_home/presentation/home_screen.dart';
import 'package:fingerPrint/Features/bottom_nav/presentation/screens/bottom_nav.dart';
import 'package:fingerPrint/Features/contact_us/presentation/screens/contact_us_screen.dart';
import 'package:fingerPrint/Features/dept_request/presentation/screens/dept_request_screen.dart';
import 'package:fingerPrint/Features/edit_profile/presentation/screens/edit_profile_screen.dart';
import 'package:fingerPrint/Features/langauge/presentation/screens/language_screen.dart';
import 'package:fingerPrint/Features/personal_account/personal_account_screen.dart';
import 'package:fingerPrint/Features/auth/register/register_screen.dart';
import 'package:fingerPrint/Features/request_status/request_status_screen.dart';
import 'package:fingerPrint/Features/request_status/widgets/current_tap.dart';
import 'package:fingerPrint/Features/request_status/widgets/rejected_tap.dart';
import 'package:fingerPrint/Features/request_status/widgets/accepted_tap.dart';
import 'package:fingerPrint/Features/auth/verification/verification_screen.dart';
import 'package:fingerPrint/Features/my_orders/presentation/screens/my_orders_screen.dart';
import 'package:fingerPrint/Features/permission_request/presentation/screens/permission_request_screen.dart';
import 'package:fingerPrint/Features/vacation_request/presentation/screens/vacation_request_screen.dart';
import 'package:flutter/material.dart';

import '../../../Features/Splash/presentation/views/splash_view.dart';
import '../../../Features/following_request/following_request_screen.dart';
import '../../../Features/home/presentation/views/book_details_view.dart';
import '../../../Features/home/presentation/views/home_view.dart';
import '../../../Features/introduction/presentation/intro_screen.dart';
import '../../../Features/auth/login/presentation/login_screen.dart';
import '../../../Features/messeges/presentation/screens/messeges_screen.dart';
import '../../../Features/messeges/presentation/screens/new_messege_screen.dart';
import '../../../Features/search/presentation/views/search_view.dart';
import '../../../Features/table/table_screen.dart';
import '../constants.dart';

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    // final args = routeSettings.arguments;

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
        return MaterialPageRoute(builder: (_) => const VerificationScreen());
      case kTapBarScreen:
        return MaterialPageRoute(builder: (_) => const RequestStatus());
      case kCurrentTapScreen:
        return MaterialPageRoute(builder: (_) => const CurrentTap());
      case kUpComingTapScreen:
        return MaterialPageRoute(builder: (_) => const AcceptedTap());
      case kRejectedTapScreen:
        return MaterialPageRoute(builder: (_) => const RejectedTap());
      case kLoginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case kAttendanceScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
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
      case kPersonalAccountScreen:
        return MaterialPageRoute(
          builder: (_) => const PersonalAccountScreen(),
        );
      case kRequestStatusScreen:
        return MaterialPageRoute(
          builder: (_) => const RequestStatus(),
        );

      case kDeptRequestScreen:
        return MaterialPageRoute(
          builder: (_) => const DeptRequestScreen(),
        );

      case kAppHomeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case kFollowingRequestScreen:
        return MaterialPageRoute(
          builder: (_) => const FollowingRequestScreen(),
        );

      case kMessegesScreen:
        return MaterialPageRoute(
          builder: (_) => const MessegesScreen(),
        );
      case kNewMessegeScreen:
        return MaterialPageRoute(
          builder: (_) => const NewMessegeScreen(),
        );

      default:
        return null;
    }
  }
}

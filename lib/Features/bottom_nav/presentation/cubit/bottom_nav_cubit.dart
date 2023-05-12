import 'package:fingerPrint/Features/attendance_view/attendance_view.dart';
import 'package:fingerPrint/Features/edit_profile/presentation/screens/edit_profile_screen.dart';
import 'package:fingerPrint/Features/langauge/presentation/views/language_screen.dart';
import 'package:fingerPrint/Features/my_orders/presentation/screens/my_orders_screen.dart';
import 'package:fingerPrint/Features/permission_view/permission_view.dart';
import 'package:fingerPrint/Features/vacation_view/vacation_view.dart';
import 'package:fingerPrint/Features/vacation_request/presentation/screens/vacation_request_screen.dart';
import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../contact_us/presentation/screens/contact_us_screen.dart';
import '../../../permission_request/presentation/screens/permission_request_screen.dart';
part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitial());

  int bottomNavIndex = 4;
  bool drawerIsOpen = false;

  List<Widget> bottomNavScreens = [
    const LanguageScreen(),
    const AttendanceView(),
    const VacationRequestScreen(),
    const MyOrdersScreen(),
    const AttendanceView(),
    const VacationRequestScreen(),
    const VacationView(),
    const VacationRequestScreen(),
    const PermissionView(),
    const VacationRequestScreen(),
    const PermissinRequestScreen(),
    const VacationRequestScreen(),
    const VacationRequestScreen(),
    const PermissinRequestScreen(),
  ];

  Widget get selectedBottomNavScreen => bottomNavScreens[bottomNavIndex];

  ListQueue<int> navigationQueue = ListQueue();

  void updateBottomNavIndex(int value) {
    emit(BottomNavInitial());
    bottomNavIndex = value;
    emit(BottomNavIsChanging());
  }

  void changeDrawerState(bool value) {
    emit(BottomNavInitial());
    drawerIsOpen = value;
    emit(DrawerState());
  }
}

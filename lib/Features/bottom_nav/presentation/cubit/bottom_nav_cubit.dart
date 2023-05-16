import 'package:fingerPrint/Features/app_home/presentation/home_screen.dart';
import 'package:fingerPrint/Features/dept_request/presentation/screens/dept_request_screen.dart';
import 'package:fingerPrint/Features/langauge/presentation/screens/language_screen.dart';
import 'package:fingerPrint/Features/my_orders/presentation/screens/my_orders_screen.dart';
import 'package:fingerPrint/Features/request_status/request_status_screen.dart';
import 'package:fingerPrint/Features/vacation_request/presentation/screens/vacation_request_screen.dart';
import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../contact_us/presentation/screens/contact_us_screen.dart';
import '../../../permission_request/presentation/screens/permission_request_screen.dart';
import '../../../personal_account/personal_account_screen.dart';
part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitial());

  int bottomNavIndex = 4;
  bool drawerIsOpen = false;

  List<Widget> bottomNavScreens = [
    const PersonalAccountScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const MyOrdersScreen(),
    const HomeScreen(),
    //
    const DeptRequestScreen(),
    const VacationRequestScreen(),
    const RequestStatus(),
    const PermissinRequestScreen(),
    const RequestStatus(),
    const RequestStatus(),
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

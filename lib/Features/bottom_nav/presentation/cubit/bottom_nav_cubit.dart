import 'package:fingerPrint/Features/messeges/presentation/screens/new_messege_screen.dart';
import 'package:fingerPrint/Features/my_orders/presentation/screens/my_orders_screen.dart';
import 'package:fingerPrint/Features/app_home/presentation/home_screen.dart';
import 'package:fingerPrint/Features/payment_permission/presentation/screens/payment_permission_screen.dart';
import 'package:fingerPrint/Features/request_status/request_status_screen.dart';
import 'package:fingerPrint/Features/vacation_request/presentation/screens/vacation_request_screen.dart';
import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../dept_request/presentation/screens/dept_request_screen.dart';
import '../../../employee_profile_form/presentation/screens/employee_profile_form_screen.dart';
import '../../../messeges/presentation/screens/messeges_screen.dart';
import '../../../permission_request/presentation/screens/permission_request_screen.dart';
import '../../../personal_account/personal_account_screen.dart';
part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitial());

  int bottomNavIndex = 4;
  bool drawerIsOpen = false;

  List<Widget> bottomNavScreens = [
    //FIVE BOTTOM NAV ITEMS
    const PersonalAccountScreen(),
    const MessegesScreen(),
    const HomeScreen(),
    const MyOrdersScreen(),
    const HomeScreen(),
    //SIX DRID ITEMS
    const DeptRequestScreen(),
    const VacationRequestScreen(),
    const RequestStatus(),
    const PermissinRequestScreen(),
    const PaymentPermissionScreen(),
    const EmploeeProfileForm(),
    
    //NEW MESSEGE INDEX
    const NewMessegeScreen(),
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

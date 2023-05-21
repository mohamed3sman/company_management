import 'package:fingerPrint/Features/change_bank_account/presentation/screens/change_bank_account_screen_step2.dart';
import 'package:fingerPrint/Features/messeges/presentation/screens/new_messege_screen.dart';
import 'package:fingerPrint/Features/my_orders/presentation/screens/my_orders_screen.dart';
import 'package:fingerPrint/Features/app_home/presentation/home_screen.dart';
import 'package:fingerPrint/Features/payment_permission/presentation/screens/payment_permission_screen.dart';
import 'package:fingerPrint/Features/procedures/procedures/presentaion/procedures.dart';
import 'package:fingerPrint/Features/request_status/request_status_screen.dart';
import 'package:fingerPrint/Features/table/table_screen.dart';
import 'package:fingerPrint/Features/vacation_request/presentation/screens/vacation_request_screen.dart';
import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../change_bank_account/presentation/screens/change_bank_account_screen_step1.dart';
import '../../../dept_request/presentation/screens/dept_request_screen.dart';
import '../../../employee_profile_form/presentation/screens/employee_profile_form_screen_step1.dart';
import '../../../employee_profile_form/presentation/screens/employee_profile_form_screen_step2.dart';
import '../../../following_request/following_request_screen.dart';
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
    //0
    const PersonalAccountScreen(),

    //1
    const MessegesScreen(),
    //2
    const HomeScreen(),
    //3
    const MyOrdersScreen(),
    //4
    const HomeScreen(),
    //SIX DRID ITEMS
    //5
    const RequestVacationScreen(),
    //6
    const RequestDeptScreen(),
    //7
    const RequestPermissinScreen(),
    //8
    const RequestStatus(),
    //9
    const EmployeeProfileFormScreenStep1(),

    //10
    const PaymentPermissionScreen(),
    //11
    const EmployeeProfileFormScreenStep2(),

    //NEW MESSEGE INDEX
    //12
    const NewMessegeScreen(),
    //13
    const DataTableView(),
    //14

    const ButtonSheet(),

    //15

    const FollowingRequestScreen(),
    //16
    const ChangeBankAccountScreenStep1(),
    //17
    const ChangeBankAccountScreenStep2(),
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

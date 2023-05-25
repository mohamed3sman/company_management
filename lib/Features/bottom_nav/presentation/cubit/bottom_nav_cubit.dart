import 'package:fingerPrint/Features/change_bank_account/presentation/screens/change_bank_account_screen_step2.dart';
import 'package:fingerPrint/Features/messeges/presentation/screens/new_messege_screen.dart';
import 'package:fingerPrint/Features/my_orders/presentation/screens/my_orders_screen.dart';
import 'package:fingerPrint/Features/app_home/presentation/home_screen.dart';
import 'package:fingerPrint/Features/notification_view/presentation/notification_view.dart';
import 'package:fingerPrint/Features/payment_permission/presentation/screens/payment_permission_screen.dart';
import 'package:fingerPrint/Features/order_details/procedures/presentaion/screens/order_details_screen.dart';
import 'package:fingerPrint/Features/request_permission/presentation/screens/request_permission_screen.dart';
import 'package:fingerPrint/Features/request_vacation/presentation/cubit/request_vacation_cubit.dart';
import 'package:fingerPrint/Features/status_request/status_request_screen.dart';
import 'package:fingerPrint/Features/table/table_screen.dart';
import 'package:fingerPrint/Features/request_vacation/presentation/screens/request_vacation_screen.dart';
import 'package:fingerPrint/Features/terms_and_conditions_view/presentation/terms_and_conditions_view.dart';
import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../change_bank_account/presentation/screens/change_bank_account_screen_step1.dart';
import '../../../contact_us/presentation/screens/contact_us_screen.dart';
import '../../../edit_profile/presentation/screens/edit_profile_screen.dart';
import '../../../request_dept/presentation/screens/request_dept_screen.dart';
import '../../../employee_profile_form/presentation/screens/employee_profile_form_screen_step1.dart';
import '../../../employee_profile_form/presentation/screens/employee_profile_form_screen_step2.dart';
import '../../../following_request/following_request_screen.dart';
import '../../../messeges/presentation/screens/messeges_screen.dart';
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
    BlocProvider(
      create: (context) => RequestVacationCubit(),
      child: RequestVacationScreen(),
    ),
    //6
    const RequestDeptScreen(),
    //7
    const RequestPermissinScreen(),
    //8
    const StatusRequest(),
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

    const OrderDetailsScreen(),

    //15

    const FollowingRequestScreen(),
    //16
    const ChangeBankAccountScreenStep1(),
    //17
    ChangeBankAccountScreenStep2(),

    //18
    const EditProfileScreen(),

    //19

    const ContactUsScreen(),

    //20

    const NotificationView(),

    //21

    const TermsAndConditionsView(),
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

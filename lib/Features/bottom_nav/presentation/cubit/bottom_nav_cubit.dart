import 'package:fingerPrint/Features/home/presentation/views/home_view.dart';
import 'package:fingerPrint/Features/langauge/presentation/views/language_screen.dart';
import 'package:fingerPrint/Features/my_orders/presentation/screens/my_orders_screen.dart';
import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitial());

  int bottomNavIndex = 4;
  bool drawerIsOpen = false;

  List<Widget> bottomNavScreens = [
    const LanguageScreen(),
    const LanguageScreen(),
    const MyOrdersScreen(),
    const LanguageScreen(),
    const LanguageScreen(),
  ];

  Widget get selectedBottomNavScreen => bottomNavScreens[bottomNavIndex];

  ListQueue<int> navigationQueue = ListQueue();

  void upadateBottomNavIndex(int value) {
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

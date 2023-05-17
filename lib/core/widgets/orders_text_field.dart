import 'package:flutter/material.dart';

import 'custom_elevated_container.dart';

// ignore: must_be_immutable
class OrdersTextField extends StatelessWidget {
  OrdersTextField({super.key, required this.height, required this.hintText});
  double height;
  String hintText;
  @override
  Widget build(BuildContext context) {
    return CustomElevatedContainer(
        containerHeight: height,
        containerWidth: double.infinity,
        containerChild: TextField(
          maxLines: 3,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintStyle: TextStyle(color: Color(0xffababac)),
            hintText: hintText,
            errorBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
          ),
        ));
  }
}

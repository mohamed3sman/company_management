import 'package:fingerPrint/Features/personal_account_view/widgets/personal_account_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalAccountView extends StatelessWidget {
  const PersonalAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 28.sp,
          ),
        ),
        title: Text(
          'الملف الشخصي',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.sp),
        ),
      ),
      body: const PersonalAccountViewBody(),
    );
  }
}

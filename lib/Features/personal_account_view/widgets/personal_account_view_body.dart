import 'package:fingerPrint/Features/personal_account_view/widgets/personal_account_container.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/utils/styles.dart';
import '../../../core/widgets/custom_button.dart';
import 'custom_setting_row.dart';

class PersonalAccountViewBody extends StatelessWidget {
  const PersonalAccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12)),
                child: Icon(
                  Icons.edit,
                  color: const Color(0xff8f7abd),
                  size: 22.sp,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'أهلا وسهلا',
                      style: Styles.textStyle20.copyWith(fontSize: 16.sp),
                    ),
                    Text(
                      'أحمد محمد عبدالرحمن',
                      style: Styles.textStyle20.copyWith(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12)),
                child: Icon(
                  Icons.person,
                  color: Color(0xff8f7abd),
                  size: 25.sp,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: const [
              PersonalAccountContainer(
                text: 'الحساب البنكي',
              ),
              PersonalAccountContainer(
                text: 'ملفاتي',
              ),
              PersonalAccountContainer(
                text: 'البيانات الشخصية',
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'الإعدادات',
            style: Styles.textStyle20
                .copyWith(color: Colors.black, fontSize: 18.sp),
          ),
          const SizedBox(height: 15),
          CustomSettingRow(
              text: 'اللغة',
              path: 'assets/icons/language.svg',
              function: () {
                Navigator.pushNamed(context, kLanguageScreen);
              }),
          CustomSettingRow(
              text: 'الإشعارات',
              path: 'assets/icons/language.svg',
              function: () {
                Navigator.pushNamed(context, kBottomNav);
              }),
          CustomSettingRow(
              text: 'الشروط والأحكام',
              path: 'assets/icons/language.svg',
              function: () {
                Navigator.pushNamed(context, kBottomNav);
              }),
          CustomSettingRow(
              text: 'سياسة الخصوصية',
              path: 'assets/icons/language.svg',
              function: () {
                Navigator.pushNamed(context, kBottomNav);
              }),
          CustomSettingRow(
              text: 'تواصل معنا',
              path: 'assets/icons/language.svg',
              function: () {
                Navigator.pushNamed(context, kContactUsScreen);
              }),
          CustomSettingRow(
              text: 'حذف الحساب',
              path: 'assets/icons/language.svg',
              function: () {
                Navigator.pushNamed(context, kBottomNav);
              }),
          const Spacer(),
          Center(
              child: Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: CustomButton(
              buttonText: 'تسجيل الخروج',
              buttonTapHandler: () {
                Navigator.pushNamed(context, kLoginView);
              },
              screenWidth: 120.0,
            ),
          ))
        ],
      ),
    );
  }
}

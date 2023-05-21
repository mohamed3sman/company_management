import 'package:fingerPrint/Features/personal_account/widgets/personal_account_container.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/styles.dart';
import '../../../core/widgets/custom_button.dart';
import 'custom_setting_row.dart';

class PersonalAccountScreenBody extends StatelessWidget {
  const PersonalAccountScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 15),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .80,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .17,
                      height: MediaQuery.of(context).size.height * .07,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(
                        Icons.person_2_outlined,
                        color: Color(0xff707070),
                        size: 25.sp,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'أهلا وسهلا',
                            style: TextStyle(
                              color: const Color(0xff8b8989),
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            'أحمد محمد عبدالرحمن',
                            style: TextStyle(
                                color: Color(0xff4e4d4d),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 43,
                      height: 43,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12)),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, kEditProfileScreen);
                        },
                        icon: Icon(
                          Icons.edit,
                          color: const Color(0xff8f7abd),
                          size: 22.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
               Row(
                children:const [
                  PersonalAccountContainer(
                    text: 'البيانات الشخصية',
                  ),
                  PersonalAccountContainer(
                    text: 'ملفاتي',
                  ),
                  PersonalAccountContainer(
                    text: 'الحساب البنكي',
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              Text(
                'الإعدادات',
                style: Styles.textStyle20.copyWith(
                  color: Colors.black,
                  fontSize: 21.sp,
                ),
              ),
              const SizedBox(height: 15),
              CustomSettingRow(
                  text: 'اللغة',
                  path: 'assets/icons/language_icon.png',
                  function: () {
                    Navigator.pushNamed(context, kLanguageScreen);
                  }),
              CustomSettingRow(
                  text: 'الإشعارات',
                  path: 'assets/icons/notification_icon.png',
                  function: () {
                    Navigator.pushNamed(context, kBottomNav);
                  }),
              CustomSettingRow(
                  text: 'الشروط والأحكام',
                  path: 'assets/icons/list_icon.png',
                  function: () {
                    Navigator.pushNamed(context, kBottomNav);
                  }),
              CustomSettingRow(
                  text: 'سياسة الخصوصية',
                  path: 'assets/icons/secure_icon.png',
                  function: () {
                    Navigator.pushNamed(context, kBottomNav);
                  }),
              CustomSettingRow(
                  text: 'تواصل معنا',
                  path: 'assets/icons/contact_us_icon.png',
                  function: () {
                    Navigator.pushNamed(context, kContactUsScreen);
                  }),
              CustomSettingRow(
                  text: 'حذف الحساب',
                  deleteAccountColor: 0xfff16056,
                  path: 'assets/icons/delete_account_icon.png',
                  function: () {
                    Navigator.pushNamed(context, kBottomNav);
                  }),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.07,
              ),
              Center(
                  child: Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: CustomButton(
                  buttonText: 'تسجيل الخروج',
                  buttonTapHandler: () {
                    Navigator.pushNamed(context, kLoginScreen);
                  },
                  screenWidth: MediaQuery.of(context).size.width * .7,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

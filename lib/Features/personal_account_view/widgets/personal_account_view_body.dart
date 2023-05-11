import 'package:flutter/material.dart';
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
                  color: Color(0xff8f7abd),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'أهلا وسهلا',
                      style: Styles.textStyle20,
                    ),
                    Text(
                      'أحمد محمد عبدالرحمن',
                      style: Styles.textStyle20.copyWith(
                          color: Colors.black,
                          fontSize: 18,
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
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Container(
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12)),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: Text(
                            'الحساب البنكي',
                            style: Styles.textStyle18.copyWith(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Container(
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12)),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: Text(
                            'ملفاتي',
                            style: Styles.textStyle18.copyWith(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Container(
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12)),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: Text(
                            'الحساب البنكي',
                            style: Styles.textStyle18.copyWith(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'الإعدادات',
            style: Styles.textStyle20.copyWith(color: Colors.black),
          ),
          const SizedBox(height: 15),
          const CustomSettingRow(
            text: 'اللغة',
            path: 'assets/icons/language.svg',
          ),
          const CustomSettingRow(
            text: 'الإشعارات',
            path: 'assets/icons/language.svg',
          ),
          const CustomSettingRow(
            text: 'الشروط والأحكام',
            path: 'assets/icons/language.svg',
          ),
          const CustomSettingRow(
            text: 'سياسة الخصوصية',
            path: 'assets/icons/language.svg',
          ),
          const CustomSettingRow(
            text: 'تواصل معنا',
            path: 'assets/icons/language.svg',
          ),
          const CustomSettingRow(
            text: 'حذف الحساب',
            path: 'assets/icons/language.svg',
          ),
          const Spacer(),
          Center(
              child: CustomButton(
            buttonText: 'تسجيل الخروج',
            buttonTapHandler: () {},
            screenWidth: 120.0,
          ))
        ],
      ),
    );
  }
}

import 'package:fingerPrint/Features/personal_account/widgets/personal_account_container.dart';
import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/styles.dart';
import '../../../core/widgets/custom_button.dart';
import '../../bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import 'custom_setting_row.dart';

class PersonalAccountScreenBody extends StatelessWidget {
  const PersonalAccountScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
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
                      width: MediaQuery.of(context).size.width * .15,
                      height: MediaQuery.of(context).size.height * .07,
                      decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(
                        Icons.person_2_outlined,
                        color: Colors.grey[700],
                        size: 25.sp,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            locale.translate("welcome")!,
                            style: TextStyle(
                              color: const Color(0xff8b8989),
                              fontSize: 11.sp,
                            ),
                          ),
                          Text(
                            'أحمد محمد عبدالرحمن',
                            style: TextStyle(
                                color: const Color(0xff4e4d4d),
                                fontSize: 12.sp,
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
                          color: kPrimaryColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12)),
                      child: IconButton(
                        onPressed: () {
                          BlocProvider.of<BottomNavCubit>(context)
                              .navigationQueue
                              .addLast(BlocProvider.of<BottomNavCubit>(context)
                                  .bottomNavIndex);
                          BlocProvider.of<BottomNavCubit>(context)
                              .updateBottomNavIndex(18);
                        },
                        icon: Icon(
                          Icons.edit,
                          color: kSecondaryColor,
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
                children: [
                  PersonalAccountContainer(
                    tapHandler: (){},
                    text: locale.translate('personal_data')!,
                  ),
                  PersonalAccountContainer(
                    tapHandler: (){},
                    text: locale.translate('my_files')!,
                  ),
                  PersonalAccountContainer(
                    tapHandler: (){
                              BlocProvider.of<BottomNavCubit>(context)
                    .navigationQueue
                    .addLast(BlocProvider.of<BottomNavCubit>(context)
                        .bottomNavIndex);
                BlocProvider.of<BottomNavCubit>(context)
                    .updateBottomNavIndex(16);
              
                    },
                    text: locale.translate('bank_account')!,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              Text(
                locale.translate('setting')!,
                style: Styles.textStyle20.copyWith(
                  color: Colors.black,
                  fontSize: 16.sp,
                ),
              ),
              const SizedBox(height: 15),
              CustomSettingRow(
                  text: locale.translate('language')!,
                  path: 'assets/icons/language_icon.png',
                  function: () {
                    Navigator.pushNamed(context, kLanguageScreen);
                  }),
              CustomSettingRow(
                  text: locale.translate('notifications')!,
                  path: 'assets/icons/notification_icon.png',
                  function: () {
                    BlocProvider.of<BottomNavCubit>(context)
                        .navigationQueue
                        .addLast(BlocProvider.of<BottomNavCubit>(context)
                            .bottomNavIndex);
                    BlocProvider.of<BottomNavCubit>(context)
                        .updateBottomNavIndex(20);
                  }),
              CustomSettingRow(
                  text: locale.translate('terms_and_conditions')!,
                  path: 'assets/icons/list_icon.png',
                  function: () {
                    BlocProvider.of<BottomNavCubit>(context)
                        .navigationQueue
                        .addLast(BlocProvider.of<BottomNavCubit>(context)
                            .bottomNavIndex);
                    BlocProvider.of<BottomNavCubit>(context)
                        .updateBottomNavIndex(21);
                  }),
              CustomSettingRow(
                  text: locale.translate('privacy_policy')!,
                  path: 'assets/icons/secure_icon.png',
                  function: () {
                    Navigator.pushNamed(context, kBottomNav);
                  }),
              CustomSettingRow(
                  text: locale.translate('contact_with_us')!,
                  path: 'assets/icons/contact_us_icon.png',
                  function: () {
                    BlocProvider.of<BottomNavCubit>(context)
                        .navigationQueue
                        .addLast(BlocProvider.of<BottomNavCubit>(context)
                            .bottomNavIndex);
                    BlocProvider.of<BottomNavCubit>(context)
                        .updateBottomNavIndex(19);
                  }),
              CustomSettingRow(
                  text: locale.translate('delete_account')!,
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
                  buttonText: locale.translate('logout')!,
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

import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:fingerPrint/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'notification_view_custom_widget.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    SizeConfig().init(context);
    return Column(
      children: [
        CustomAppBar(
          icon: const Icon(Icons.arrow_forward),
          function: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: EdgeInsets.only(
              top: 13.h, bottom: SizeConfig.screenHeight! * 0.025),
          child: Text(locale.translate('notifications')!,
              style: TextStyle(
                color: const Color(0xff000000),
                
                fontSize: 18.sp,
              ),
              textAlign: TextAlign.right),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return const NotificationViewCustomWidget();
            },
          ),
        )
      ],
    );
  }
}

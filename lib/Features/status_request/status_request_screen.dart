import 'package:fingerPrint/Features/status_request/widgets/tap_bar_view_body.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';

class StatusRequest extends StatelessWidget {
  const StatusRequest({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      backgroundColor: Colors.white,
      body: TapBarViewBody(),
    );
  }
}

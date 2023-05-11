import 'package:fingerPrint/Features/tap_bar_view/widgets/tap_bar_view_body.dart';
import 'package:flutter/material.dart';

import '../../core/utils/constants.dart';

class TapBarView extends StatelessWidget {
  const TapBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff7350cb),
        onPressed: () {
          Navigator.pushNamed(context, kAttendanceScreen);
        },
        child: const Icon(Icons.add),
      ),
      body: const TapBarViewBody(),
    );
  }
}

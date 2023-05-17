import 'package:fingerPrint/Features/request_status/widgets/tap_bar_view_body.dart';
import 'package:flutter/material.dart';

class RequestStatus extends StatelessWidget {
  const RequestStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const TapBarViewBody(),
    );
  }
}

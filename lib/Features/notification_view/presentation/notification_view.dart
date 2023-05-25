import 'package:animate_do/animate_do.dart';
import 'package:fingerPrint/Features/notification_view/presentation/widgets/notification_view_body.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: FadeInUp(child: NotificationViewBody()),
    );
  }
}

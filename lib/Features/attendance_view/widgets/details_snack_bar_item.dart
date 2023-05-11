import 'package:flutter/material.dart';

class DetailsSnackBarItem extends StatelessWidget {
  const DetailsSnackBarItem({
    super.key,
    required this.icon,
    required this.timeText,
    required this.actionText,
  });
  final IconData icon;
  final String timeText;
  final String actionText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icon,
            color: Colors.deepPurple,
          ),
          Text(timeText,
              style: const TextStyle(
                fontFamily: 'HacenTunisia',
                color: Color(0xff636262),
                fontSize: 12,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              )),
          Text(actionText,
              style: const TextStyle(
                fontFamily: 'HacenTunisia',
                color: Color(0xffdbdada),
                fontSize: 7,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomTableDateColumnItem extends StatelessWidget {
  const CustomTableDateColumnItem(
      {super.key, required this.dayName, required this.dayNumber});

  final String dayName;
  final String dayNumber;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: const Color(0xffeaeaf7),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Text(dayNumber,
                style: const TextStyle(
                  fontFamily: 'HacenTunisia',
                  color: Color(0xcc5647b2),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                )),
            Text(dayName,
                style: const TextStyle(
                  fontFamily: 'HacenTunisia',
                  color: Color(0xcc5647b2),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                )),
          ],
        ),
      ),
    );
  }
}

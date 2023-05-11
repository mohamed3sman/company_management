import 'package:flutter/material.dart';

class StackPurbleContainer extends StatelessWidget {
  const StackPurbleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          colors: [Color(0xff5647b2), Color(0xffafaadb), Color(0xff5647b2)],
          stops: [0, 0.4560239911079407, 1],
          begin: Alignment(-0.73, -0.68),
          end: Alignment(0.73, 0.68),
        ),
      ),
    );
  }
}

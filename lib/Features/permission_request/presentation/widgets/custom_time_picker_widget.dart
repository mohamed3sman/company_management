import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTimePicker extends StatelessWidget {
  CustomTimePicker({super.key, required this.timePickerText});
  String timePickerText;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: screenSize.width * .4,
      height: screenSize.height * .07,
      child: InkWell(
        onTap: () {
          showTimePicker(context: context, initialTime: TimeOfDay.now());
        },
        child: Card(
          elevation: 6,
          child: Container(
            padding: EdgeInsets.only(left:4 ,right: 4),
            alignment: Alignment.centerRight,
              child: Text(
            timePickerText,
            textAlign: TextAlign.left,
          )),
        ),
      ),
    );
  }
}

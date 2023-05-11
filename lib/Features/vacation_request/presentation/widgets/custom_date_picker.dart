import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomDatePicker extends StatelessWidget {
  CustomDatePicker({super.key, required this.CustomDatePickerText});
  String CustomDatePickerText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime.now());
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        // alignment: Alignment.centerRight,
        width: MediaQuery.of(context).size.width * .87,
        height: MediaQuery.of(context).size.height * .07,
        child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(CustomDatePickerText,
                style: TextStyle(
                  color: Color(0xffababac),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                )),
          ),
        ),
      ),
    );
  }
}

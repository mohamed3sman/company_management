import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        DatePickerDialog(
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now());
      },
        child: Card(
            elevation: 4,
            child:Text("data") ));
  }
}

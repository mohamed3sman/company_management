import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_elevated_container.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({super.key, required this.customDatePickerText});
  final String customDatePickerText;

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  var selectedDate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2030))
            .then((value) {
          var formated = DateFormat.yMMMEd().format(value!);
          setState(() {
            selectedDate = formated;
          });
        });
      },
      child: CustomElevatedContainer(
  
        // decoration: BoxDecoration(
        
        //   borderRadius: BorderRadius.circular(15)),
        containerWidth: MediaQuery.of(context).size.width,
        containerHeight: MediaQuery.of(context).size.height * .07,
        containerChild: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            selectedDate == null
                ? widget.customDatePickerText
                : selectedDate.toString(),
            style: selectedDate == null
                ? const TextStyle(
                    color: Color(0xffababac),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  )
                : null,
          ),
        ),
      ),
    );
  }
}

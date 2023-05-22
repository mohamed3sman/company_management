import 'package:flutter/material.dart';

class CustomTimePicker extends StatefulWidget {
  const CustomTimePicker({super.key, required this.timePickerText});
  final String timePickerText;

  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  var pickedTime;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: screenSize.width * .4,
      height: screenSize.height * .07,
      child: InkWell(
        onTap: () {
          showTimePicker(context: context, initialTime: TimeOfDay.now())
              .then((value) {
            setState(() {
              pickedTime = value!.format(context);
            });
          });
        },
        child: Card(
          elevation: 6,
          child: Container(
              padding: const EdgeInsets.only(left: 4, right: 4),
              alignment: Alignment.centerRight,
              child: Text(
                pickedTime == null
                    ? widget.timePickerText
                    : pickedTime.toString(),
                textAlign: TextAlign.left,
              )),
        ),
      ),
    );
  }
}

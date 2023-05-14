import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDropDownList extends StatefulWidget {
  CustomDropDownList({super.key, required this.hintText});
  String hintText;
  @override
  State<CustomDropDownList> createState() => _CustomDropDownListState();
}

class _CustomDropDownListState extends State<CustomDropDownList> {
  List<String> items = ["1", "2"];
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: DropdownButtonFormField<String>(
        borderRadius: BorderRadius.circular(10),
        iconSize: 50,
        //elevation: 12,
        hint: Text(widget.hintText,
            style: TextStyle(
              color: Color(0xffababac),
              fontSize: 13,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            )),
        value: selectedItem,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.only(right: 10, left: 10),

          // constraints: BoxConstraints.loose(
          //   Size(MediaQuery.of(context).size.width * .85,
          //       MediaQuery.of(context).size.height*.2),
          // ),
        ),
        items: items.map((item) {
          return DropdownMenuItem(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            selectedItem = value;
          });
        },
      ),
    );
  }
}

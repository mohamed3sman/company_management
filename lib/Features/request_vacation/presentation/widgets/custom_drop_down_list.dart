import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDropDownList extends StatefulWidget {
  CustomDropDownList({super.key, required this.hintText, this.width});
  String hintText;
  double? width;
  @override
  State<CustomDropDownList> createState() => _CustomDropDownListState();
}

class _CustomDropDownListState extends State<CustomDropDownList> {
  List<String> items = ["1", "2"];
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      //height: 46,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xfff9f9f9),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow:const [
          BoxShadow(
            color: Color(0x1c000000),
            offset: Offset(0, 2),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: DropdownButtonFormField<String>(
        iconEnabledColor:const Color(0xffC9C9CA),
        borderRadius: BorderRadius.circular(12),
        iconSize: 50,
        //elevation: 12,
        hint: Text(widget.hintText,
            style:  const TextStyle(
              color: Color(0xffababac),
              fontSize: 13,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            )),
        value: selectedItem,

        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(right: 10, left: 0),

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

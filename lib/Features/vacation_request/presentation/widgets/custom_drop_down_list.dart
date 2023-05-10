import 'package:flutter/material.dart';

class CustomDropDownList extends StatefulWidget {
  const CustomDropDownList({super.key});

  @override
  State<CustomDropDownList> createState() => _CustomDropDownListState();
}

class _CustomDropDownListState extends State<CustomDropDownList> {
  List<String> items = [];

  String? selectedItem = "item1";

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      child: DropdownButtonFormField<String>(
        iconSize: 50,
        hint: const Text("نوع الإجازة", style: TextStyle(
  
    color: Color(0xffababac),
    fontSize: 13,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    
    
    )),
        value: selectedItem,
        decoration: InputDecoration(
       //   hintText: "dfdfd",
          contentPadding: const EdgeInsets.only(right: 10, left: 10),
          enabledBorder: InputBorder.none,
          constraints: BoxConstraints.loose(
            Size(MediaQuery.of(context).size.width * .85,
                MediaQuery.of(context).size.height*.2),
          ),
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
          print(selectedItem);
        },
      ),
    );
  }
}

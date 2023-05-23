import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomOrderItem extends StatelessWidget {
  final String titleText;
  final String subTitleText;
  final String imgscr;
  const CustomOrderItem(
      {Key? key,
      required this.titleText,
      required this.subTitleText,
      required this.imgscr})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return ListTile(
      leading: Container(
        height: 45,
        width: 45,
        decoration:  BoxDecoration(
          color: kPrimaryColor.withOpacity(.1),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Center(
          child: Image.asset(imgscr,color: kPrimaryColor,),
        ),
      ),
      title: Text(titleText,style: TextStyle(fontSize: 15,),),
      subtitle: Text(subTitleText,style: TextStyle(fontSize: 13,)),
    );
  }
}

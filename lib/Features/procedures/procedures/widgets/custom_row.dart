import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String mainText;
  final String secandryText;
  final String imgscr;
  const CustomRow({Key? key, required this.mainText, required this.secandryText, required this.imgscr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [

          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Color(0xffEAEAF7),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child:  Center(child: Image.asset(imgscr)),
          ),
          const SizedBox(width: 20,),
          Column(
            children:  [
              Text(mainText,style: const TextStyle(fontWeight: FontWeight.bold),),
              Text(secandryText),
            ],
          ),
        ],
      ),
    );
  }
}

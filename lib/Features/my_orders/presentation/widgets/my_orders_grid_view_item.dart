import 'package:animate_do/animate_do.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';

class MyOrdersGridViewItem extends StatelessWidget {
  const MyOrdersGridViewItem({
    super.key,
    required this.gridItemTapHandler,
    required this.gridText,
    required this.gridImagePath,
    required this.navScreenIndex,
  });
  final Function gridItemTapHandler;
  final String gridText;
  final String gridImagePath;
  final int navScreenIndex;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        gridItemTapHandler();
      },
      child: Tooltip(
        decoration: const BoxDecoration(color: Colors.black),
        // textStyle: ,
        message: "icon messege",
        child: Container(
          decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(.2),
              borderRadius: BorderRadius.circular(12)),
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height / 5.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Bounce(
                child: Image.asset(
                  gridImagePath,
                  height: MediaQuery.of(context).size.height * .12,
                ),
              ),
              SizedBox(
                //height: 40,
                child: Text(
                  gridText,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style:
                      const TextStyle(fontSize: 14, color: Color(0xff403f3f)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

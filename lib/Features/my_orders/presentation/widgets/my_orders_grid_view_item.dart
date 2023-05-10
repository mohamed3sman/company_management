import 'package:flutter/material.dart';

class MyOrdersGridViewItem extends StatelessWidget {
  MyOrdersGridViewItem({
    required this.gridItemTapHandler,
    required this.gridText,
    required this.gridImagePath,
  });
  final Function gridItemTapHandler;
  final String gridText;
  final String gridImagePath;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: Color(0x299a80d9), borderRadius: BorderRadius.circular(12)),
        width:
         
         MediaQuery.of(context).size.width - 70,
        height: MediaQuery.of(context).size.height - 70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              gridImagePath,
              height: MediaQuery.of(context).size.height * .12,
            ),
            SizedBox(
                //height: 40,
                child: Text(
                  
                  gridText,
                  maxLines: 1,softWrap: true,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xff403f3f)),
                )),
          ],
        ),
      ),
    );
  }
}

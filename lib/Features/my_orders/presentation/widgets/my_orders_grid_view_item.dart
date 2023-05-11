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
  final String navScreenIndex;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(navScreenIndex);
      },
      child: Tooltip(
        decoration: const BoxDecoration(color: Colors.black),
        // textStyle: ,
        message: "icon messege",
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0x299a80d9),
              borderRadius: BorderRadius.circular(12)),
          width: MediaQuery.of(context).size.width - 70,
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

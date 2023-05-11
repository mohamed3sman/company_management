import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ListTile(
            onTap: () {},
           
            title: const Text(
              "أهلا وسهلا",
              style: TextStyle(color: Color(0xff9d9d9e), fontSize: 13),
            ),
            leading: const Icon(Icons.person_pin),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_rounded,
                size: 30,
                color: Color(0xff707070),
              ),
            ),
            subtitle: const Text(
              "أحمد محمد عبدالرحمن",
              style: TextStyle(color: Color(0xff1d1d1d), fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}

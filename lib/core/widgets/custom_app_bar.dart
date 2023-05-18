import 'package:flutter/material.dart';
import '../locale/app_localizations.dart';
import '../utils/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: const [
          Icon(
            Icons.notifications_none_sharp,
            color: Colors.grey,
            size: 30,
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, kPersonalAccountScreen);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Image.network(
                "https://www.mei.edu/sites/default/files/styles/profile_image_size/public/photos/Sultan%20Al%20Qassemi_square.png?itok=F-VxEcCA",
                height: 10.0,
                width: 10.0,
              ),
            ),
          ),
        ),
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            AppLocalizations.of(context)!.translate("welcome")!,
            style: const TextStyle(color: Color(0xff9d9d9e), fontSize: 13),
          ),
          const Text("أحمد محمد عبدالرحمن",
              style: TextStyle(color: Color(0xff1d1d1d), fontSize: 15)),
        ]));
  }
}

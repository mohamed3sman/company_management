import 'package:flutter/material.dart';
import '../locale/app_localizations.dart';
import '../utils/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      this.icon = const Icon(Icons.notifications_none_sharp),
      this.function});

  final Widget icon;
  final Function()? function;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: function,
              icon: icon,
              color: Colors.grey[700],
            ),
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
            style: const TextStyle(color: Color(0xff9d9d9e), fontSize: 12),
          ),
          const Text("أحمد محمد عبدالرحمن",
              style: TextStyle(color: Color(0xff1d1d1d), fontSize: 13)),
        ]));
  }
}

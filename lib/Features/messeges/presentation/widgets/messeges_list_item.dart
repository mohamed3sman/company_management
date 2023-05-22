import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:flutter/material.dart';

class MessegesListItem extends StatelessWidget {
  const MessegesListItem({super.key});

  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.startToEnd,
      background: Container(
        padding:const EdgeInsets.only(left: 50, right: 50),
        alignment: Alignment.centerRight,
        color:const Color(0xffbb0202),
        child:const Icon(
          Icons.delete_outline_rounded,
          size: 30,
          color: Colors.white,
        ),
      ),
      onDismissed: (direction) {},
      child: Column(
        children: [
          ListTile(
            subtitle: Text(
             locale.translate('company_congratulates')!,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12),
            ),
            title:  Text(
            locale.translate('congratulations_on_the_occasion')!,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 17),
            ),
            trailing:const Text("03:00 PM"),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                "https://www.mei.edu/sites/default/files/styles/profile_image_size/public/photos/Sultan%20Al%20Qassemi_square.png?itok=F-VxEcCA",
                width: 50,
                height: 50,
              ),
            ),
          ),
          const Divider(
            height: 7,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

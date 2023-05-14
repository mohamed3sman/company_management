import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../register_view/widgets/styles.dart';

class TapBarAppBar extends StatelessWidget {
  const TapBarAppBar({super.key});

  @override
  Widget build(BuildContext context) {
        late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
           locale.translate('welcome')!,
              style: Styles.textStyle16.copyWith(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            const Text('أحمد محمد عبدالرحمن', style: Styles.textStyle16)
          ],
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey.withOpacity(0.5),
          child: const Icon(
            Icons.person_2_outlined,
            color: Colors.deepPurple,
          ),
        )
      ],
    );
  }
}

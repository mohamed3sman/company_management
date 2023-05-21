import 'package:fingerPrint/Features/request_status/widgets/order_list_tile.dart';
import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:flutter/material.dart';

class CurrentTap extends StatelessWidget {
  const CurrentTap({super.key});

  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    return Column(
      children: [
        OrderListTile(
          dotColor: Colors.amber,
          status: locale.translate('work_is_underway')!,
        ),
        OrderListTile(
          dotColor: Colors.amber,
          status: locale.translate('work_is_underway')!,
        ),
        OrderListTile(
          dotColor: Colors.amber,
          status: locale.translate('work_is_underway')!,
        ),
        OrderListTile(
          dotColor: Colors.amber,
          status: locale.translate('work_is_underway')!,
        ),
        OrderListTile(
          dotColor: Colors.amber,
          status: locale.translate('work_is_underway')!,
        ),
        OrderListTile(
          dotColor: Colors.amber,
          status: locale.translate('work_is_underway')!,
        ),
        OrderListTile(
          dotColor: Colors.amber,
          status: locale.translate('work_is_underway')!,
        ),
        OrderListTile(
          dotColor: Colors.amber,
          status: locale.translate('work_is_underway')!,
        ),
        OrderListTile(
          dotColor: Colors.amber,
          status: locale.translate('work_is_underway')!,
        ),
      ],
    );
  }
}

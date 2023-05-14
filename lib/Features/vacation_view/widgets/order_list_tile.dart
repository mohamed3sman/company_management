import 'package:fingerPrint/Features/vacation_view/widgets/row_details_alert.dart';
import 'package:fingerPrint/core/locale/app_localizations.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderListTile extends StatelessWidget {
  const OrderListTile(
      {super.key, required this.status, required this.dotColor});

  final String status;
  final Color dotColor;

  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            const BoxShadow(
                color: Colors.grey, blurRadius: 3.0, offset: Offset(0.0, 0.8))
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    // set up the AlertDialog
                    AlertDialog alert = alertDetails(context);

                    // show the dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      },
                    );
                  },
                  child: Text(
                    locale.translate('the_details')!,
                    style: const TextStyle(color: kPrimaryColor, fontSize: 12),
                  ),
                ),
                Text(
                  ' ${locale.translate('order_number')!} : 123456',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6), fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      status,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 12),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Icon(
                        Icons.circle,
                        color: dotColor,
                        size: 10,
                      ),
                    ),
                    Text(
                      ' :${locale.translate('status')!}',
                      style: const TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ],
                ),
                Text(
                  '${locale.translate('type_vacation')!} : ${locale.translate('sick_leave')!} ',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6), fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AlertDialog alertDetails(context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0))),
      contentPadding: const EdgeInsets.only(top: 10.0, right: 10),
      actionsAlignment: MainAxisAlignment.end,
      actionsOverflowDirection: VerticalDirection.up,
      icon: const Align(
        alignment: Alignment.topLeft,
        child: FaIcon(
          FontAwesomeIcons.xmark,
          color: Color(0xd97350cb),
        ),
      ),
      title: Text(AppLocalizations.of(context)!.translate("order_details")!),
      alignment: Alignment.center,
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .3,
        child: Column(
          children: [
            rowDetailsAlert(
              staticText:
                  AppLocalizations.of(context)!.translate("num_request")!,
              comeText: "# 3625362",
            ),
            rowDetailsAlert(
              staticText:
                  AppLocalizations.of(context)!.translate("date_request")!,
              comeText: "# 3625362",
            ),
            rowDetailsAlert(
              staticText:
                  AppLocalizations.of(context)!.translate("type_vacation")!,
              comeText: "# 3625362",
            ),
            rowDetailsAlert(
              staticText: AppLocalizations.of(context)!.translate("num_days")!,
              comeText: "# 3625362",
            ),
            rowDetailsAlert(
              staticText: AppLocalizations.of(context)!.translate("from_date")!,
              comeText: "# 3625362",
            ),
          ],
        ),
      ),
    );
  }
}

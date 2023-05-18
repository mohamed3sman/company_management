import 'package:fingerPrint/Features/request_status/widgets/tap_bar_view_body.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';

class RequestStatus extends StatelessWidget {
  const RequestStatus({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(
                'https://sportsmatik.com/uploads/world-events/players/lionel-messi_1564492648.jpg',
                width: 50,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'أهلا وسهلا',
                    style: TextStyle(color: Color(0xff8b8989), fontSize: 15),
                  ),
                  Text(
                    'أحمد محمد عبدالرحمن',
                    style: TextStyle(color: Color(0xff4e4d4d), fontSize: 15),
                  )
                ],
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth! * 0.040),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: const TapBarViewBody(),
    );
  }
}

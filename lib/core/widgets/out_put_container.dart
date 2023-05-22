import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/gaps.dart';

// ignore: must_be_immutable
class OutPutContainer extends StatelessWidget {
  OutPutContainer({
    super.key,
    required this.containerIconPath,
    required this.containerTitle,
    required this.containerWidth,
    required this.containerText,
  });
  double containerWidth;
  String containerText;
  String containerTitle;
  String containerIconPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Gaps.hGap10,
              Image.asset(
                containerIconPath,
                color: kPrimaryColor,
                scale: 1.2,
              ),
              Gaps.hGap10,
<<<<<<< HEAD:lib/Features/dept_request/presentation/widgets/out_put_container.dart
              Text(containerTitle,style: const TextStyle(color: kTextColor,
              fontSize:12,
              overflow:TextOverflow.ellipsis,
              ),),
=======
              Text(
                containerTitle,
                style: const TextStyle(
                  color: kTextColor,
                  fontSize: 11,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
>>>>>>> 8b36ff18e13bb5e1be2169327d32dbabc436164d:lib/core/widgets/out_put_container.dart
            ],
          ),
          Gaps.vGap5,
          Container(
<<<<<<< HEAD:lib/Features/dept_request/presentation/widgets/out_put_container.dart
            margin:const EdgeInsets.only(bottom: 10),
            padding:const EdgeInsets.only(left: 10, right: 10),
=======
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.only(left: 10, right: 10),
>>>>>>> 8b36ff18e13bb5e1be2169327d32dbabc436164d:lib/core/widgets/out_put_container.dart
            alignment: Alignment.centerRight,
            width: containerWidth,
            height: MediaQuery.of(context).size.height * .05,
            decoration: BoxDecoration(
<<<<<<< HEAD:lib/Features/dept_request/presentation/widgets/out_put_container.dart
              color:const Color(0xfff6f6f6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              containerText,
              style:const TextStyle(
=======
              color: const Color(0xfff6f6f6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              containerText,
              style: const TextStyle(
>>>>>>> 8b36ff18e13bb5e1be2169327d32dbabc436164d:lib/core/widgets/out_put_container.dart
                color: kOutPutContainerTextColor,
                overflow: TextOverflow.ellipsis,
                fontSize: 11,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

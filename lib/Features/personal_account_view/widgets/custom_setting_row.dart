import 'package:flutter/material.dart';

import '../../../core/utils/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSettingRow extends StatelessWidget {
  const CustomSettingRow({super.key, required this.path, required this.text});

  final String text;
  final String path;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                text,
                style: Styles.textStyle18
                    .copyWith(color: Colors.black.withOpacity(0.6)),
              ),
              const SizedBox(
                width: 10,
              ),
              SvgPicture.asset(path),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}

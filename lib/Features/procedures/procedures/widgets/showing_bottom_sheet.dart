import 'package:fingerPrint/core/widgets/custom_button.dart';
import 'package:fingerPrint/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ShowModalBottomSheet extends StatefulWidget {
  const ShowModalBottomSheet({super.key});

  @override
  State<ShowModalBottomSheet> createState() => _ShowModalBottomSheetState();
}

String checkoption = "قبول";

class _ShowModalBottomSheetState extends State<ShowModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text("الاجراءات"),
              Icon(Icons.cancel),
            ],
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                RadioListTile(
                  title: const Text("قبول"),
                  value: "قبول",
                  groupValue: checkoption,
                  onChanged: (value) {
                    setState(() {
                      checkoption = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: const Text("رفض"),
                  value: "رفض",
                  groupValue: checkoption,
                  onChanged: (value) {
                    setState(() {
                      checkoption = value.toString();
                    });
                  },
                ),
              ],
            ),
          ),
          CustomTextField(
            stringInTextField: "ملاحظات",
            textInputType: TextInputType.text,
            obscureText: false,
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          CustomButton(
              screenWidth: MediaQuery.of(context).size.width * 0.7,
              buttonTapHandler: () {},
              buttonText: "حفظ")
        ],
      ),
    );
  }
}

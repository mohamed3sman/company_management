import 'package:fingerPrint/Features/request_status/widgets/accepted_tap.dart';
import 'package:fingerPrint/Features/request_status/widgets/current_tap.dart';
import 'package:fingerPrint/Features/request_status/widgets/rejected_tap.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/utils/mediaquery_sizes.dart';
import 'package:flutter/material.dart';

class TapBarViewBody extends StatefulWidget {
  const TapBarViewBody({super.key});

  @override
  State<TapBarViewBody> createState() => _TapBarViewBodyState();
}

List<String> taps = const [
  'جارية',
  'تم القبول',
  'تم الرفض',
];

List<Widget> body = const [
  CurrentTap(),
  AcceptedTap(),
  RejectedTap(),
];
int current = 0;

class _TapBarViewBodyState extends State<TapBarViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SingleChildScrollView(
            child: Expanded(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ListView.builder(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: taps.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    current = index;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  width:
                                      MediaQuery.of(context).size.width / 3.48,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 3.0,
                                          offset: Offset(-1, 0))
                                    ],
                                    borderRadius: BorderRadius.circular(12),
                                    color: current == index
                                        ? const Color(0xff7350cb)
                                        : Colors.white,
                                  ),
                                  child: Center(
                                    child: Text(
                                      taps[index],
                                      style: TextStyle(
                                          color: current == index
                                              ? Colors.white
                                              : const Color(0xff7350cb)),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Visibility(
                                  visible: current == index,
                                  child: Container(
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                        color: Colors.deepPurpleAccent,
                                        shape: BoxShape.circle),
                                  ))
                            ],
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          body[current],
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: SizeConfig.screenHeight! * 0.025),
            child: FloatingActionButton(
              backgroundColor: kPrimaryColor,
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}

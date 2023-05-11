import 'package:flutter/material.dart';

class AttendanceViewBodyAppBar extends StatelessWidget {
  const AttendanceViewBodyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Row(
        children: [
          const Icon(
            Icons.notifications_none,
            size: 40,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.20,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.5),
                child: Icon(Icons.person),
              ),
              const Text('احمد محمد عبدالرحمن'),
            ],
          ),
        ],
      ),
    );
  }
}

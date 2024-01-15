import 'package:flutter/material.dart';

class WeekDaysWidget extends StatelessWidget {
  const WeekDaysWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Today',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            'Next 5 Days',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

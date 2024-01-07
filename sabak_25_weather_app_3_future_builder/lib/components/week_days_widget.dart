import 'package:flutter/material.dart';

class WeekDaysWidget extends StatelessWidget {
  const WeekDaysWidget({
    super.key,
    required this.dayText,
    required this.icon,
  });
  final String dayText;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Text(
            dayText,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
          SizedBox(width: 180),
          Icon(
            Icons.thermostat,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.sunny,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.cloud,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

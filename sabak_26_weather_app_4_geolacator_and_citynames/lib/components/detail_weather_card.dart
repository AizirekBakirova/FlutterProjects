import 'package:flutter/material.dart';

class DetailWeatherCard extends StatelessWidget {
  const DetailWeatherCard({
    super.key,
    required this.timetext1,
    required this.temptext2,
    this.icon,
    // required this.tempimage,
    // required this.windSpeed,
  });
  // final String windSpeed;
  final String timetext1;
  final String temptext2;
  // final String tempimage;
  final dynamic icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                timetext1,
                // '5',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              // Image.asset(
              //   'assets/7 (1).png',
              //   scale: 300,
              // ),
              Icon(icon),
              Text(
                temptext2,
                // windSpeed
                // '8°C',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

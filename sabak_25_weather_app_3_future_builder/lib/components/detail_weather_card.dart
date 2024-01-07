import 'package:flutter/material.dart';

class DetailWeatherCard extends StatelessWidget {
  const DetailWeatherCard({
    super.key,
    required this.windSpeed,
  });
  final String windSpeed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                '5',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Icon(
                Icons.air,
                color: Colors.white,
              ),
              Text(
                windSpeed
                // '8°'
                ,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

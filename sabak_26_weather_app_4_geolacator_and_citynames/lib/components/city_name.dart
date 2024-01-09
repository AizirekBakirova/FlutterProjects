import 'package:flutter/material.dart';

class CityName extends StatelessWidget {
  const CityName({
    super.key,
    required this.cityName,
  });
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return Text(
      cityName,
      style: TextStyle(color: Colors.white, fontSize: 30),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sabak_26_weather_app_4_geolacator_and_citynames/components/city_name.dart';

class NearMeLocation extends StatelessWidget {
  const NearMeLocation({
    super.key,
    required this.locationPressed,
    required this.cityNamePressed,
  });
  final void Function() locationPressed;
  final void Function() cityNamePressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: locationPressed,
              icon: Icon(
                Icons.near_me,
                size: 25,
                color: Colors.white,
              )),
          IconButton(
              onPressed: cityNamePressed,
              icon: Icon(
                Icons.location_city,
                size: 25,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}

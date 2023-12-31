import 'package:flutter/material.dart';

class NearMeLocation extends StatelessWidget {
  const NearMeLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.near_me,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.location_city,
            size: 25,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NearMeLocation extends StatelessWidget {
  const NearMeLocation({
    super.key,
    required this.onPressed,
  });
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.near_me,
            size: 25,
            color: Colors.white,
          ),
          IconButton(
              onPressed: onPressed,
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

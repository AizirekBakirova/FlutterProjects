import 'package:flutter/material.dart';

class TempWidget extends StatelessWidget {
  const TempWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Text(
            '8',
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          Image.asset(
            'assets/cloud.png',
            width: 100,
          )
        ],
      ),
    );
  }
}

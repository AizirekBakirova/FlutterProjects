import 'package:flutter/material.dart';

class TempWidget extends StatelessWidget {
  const TempWidget({
    super.key,
    required this.tempText,
  });
  final String tempText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            tempText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 60,
            ),
          ),
        ],
      ),
    );
  }
}

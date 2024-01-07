import 'package:flutter/material.dart';

class TempWidget extends StatelessWidget {
  const TempWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text(
            '9°',
            style: TextStyle(
              color: Colors.white,
              fontSize: 60,
            ),
          ),
        ],
      ),
    );
  }
}

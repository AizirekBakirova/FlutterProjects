import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({
    Key? key,
    required this.color,
    required this.baskych,
  }) : super(key: key);
  final Color color;

  final void Function() baskych;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: baskych,
      child: Container(
        color: color,
        width: double.infinity,
        height: 90,
      ),
    );
  }
}

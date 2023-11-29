import 'package:flutter/material.dart';

class BmiContainer extends StatelessWidget {
  const BmiContainer({
    super.key,
    required this.icon,
    required this.text,
    required this.san,
    required this.smText,
    required this.size,
  });
  final IconData icon;
  final String text;
  final int san;
  final String smText;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 177,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10)));
  }
}

import 'package:flutter/material.dart';

class AppTextfield extends StatelessWidget {
  const AppTextfield(
      {super.key, required this.hintText, required this.borderRadius});
  final String hintText;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: borderRadius)),
      ),
    );
  }
}

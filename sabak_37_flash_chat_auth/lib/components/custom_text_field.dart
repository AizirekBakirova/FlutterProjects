import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    required this.onChanged,
    this.controller,
    required this.obscureText,
  });
  final String text;
  final void Function(String) onChanged;
  final TextEditingController? controller;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        textAlign: TextAlign.center,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: text,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}

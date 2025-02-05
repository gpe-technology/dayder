import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    super.key,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.maxLines = 1,
    this.errorText,
    this.obscureText = false,
  });

  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLines;
  final String? errorText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        style: const TextStyle(fontSize: 14),
        decoration: InputDecoration(
          hintText: hintText,
          errorText: errorText,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        ),
        maxLines: maxLines,
        obscureText: obscureText,
      ),
    );
  }
}

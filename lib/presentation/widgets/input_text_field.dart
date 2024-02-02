import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField(
      {super.key,
      this.controller,
      this.hintText,
      this.keyboardType,
      this.maxLines = 1,
      this.errorText});

  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLines;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        style: const TextStyle(fontSize: 14.0),
        decoration: InputDecoration(
          hintText: hintText,
          errorText: errorText,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        ),
        maxLines: maxLines,
      ),
    );
  }
}

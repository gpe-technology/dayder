import 'package:flutter/material.dart';

class TestFieldInput extends StatelessWidget {
  const TestFieldInput({super.key, this.controller, this.hintText});

  final String? hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        child: TextField(
          controller: controller,
          style: const TextStyle(fontSize: 14.0),
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
          ),
        ),
      ),
    );
  }
}

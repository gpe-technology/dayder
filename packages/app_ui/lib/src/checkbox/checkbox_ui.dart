import 'package:flutter/material.dart';

class CheckboxUI extends StatelessWidget {
  const CheckboxUI({
    super.key,
    this.value,
    required this.onChanged,
    this.borderRadius = 6.0,
  });
  final bool? value;
  final void Function(bool?)? onChanged;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.0,
      height: 20.0,
      child: Checkbox(
        value: value,
        onChanged: onChanged,
        splashRadius: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}

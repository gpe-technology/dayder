import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

enum Variant { secondary, destructive, outline, ghost, link }

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.child,
    required this.onPressed,
    this.isLoading = false,
    this.variant,
  });
  final Widget child;
  final Variant? variant;
  final void Function()? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: isLoading ? null : onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isLoading
              ? const CircularProgressIndicatorUI()
              : const SizedBox.shrink(),
          isLoading ? const SizedBox(width: 10.0) : const SizedBox.shrink(),
          child,
        ],
      ),
    );
  }
}

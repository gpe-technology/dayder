import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

enum Variant { primary, secondary, destructive, outline, ghost, link }

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.child,
    required this.onPressed,
    this.isLoading = false,
    this.variant = Variant.primary,
  });
  final Widget child;
  final Variant variant;
  final void Function()? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return switch (variant) {
      Variant.primary => FilledButton(
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
      ),
      Variant.secondary => ElevatedButton(
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
      ),
      Variant.destructive => OutlinedButton(
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
      ),
      Variant.outline => OutlinedButton(
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
      ),
      Variant.ghost => ElevatedButton(
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
      ),
      Variant.link => TextButton(
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
      ),
    };
  }
}

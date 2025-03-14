import 'package:flutter/material.dart';

/// Show alert dialog with custom UI.
Future<void> alertDialogUI({
  required BuildContext context,
  Widget? title,
  Widget? content,
  List<Widget>? actions,
  double? radius,
}) => showDialog<void>(
  context: context,
  builder: (BuildContext context) {
    return ColoredBox(
      color: Colors.black54,
      child: AlertDialog(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 6),
        ),
        title: title,
        content: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: content,
        ),
        actions: actions,
      ),
    );
  },
);

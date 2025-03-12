import 'package:flutter/material.dart';

alertDialogUI({
  required BuildContext context,
  Widget? title,
  Widget? content,
  List<Widget>? actions,
  double? radius,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Container(
        color: Colors.black54,
        child: AlertDialog(
          elevation: 0.0,
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
}

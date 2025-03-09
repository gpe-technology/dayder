import 'package:flutter/material.dart';

class AppListTile extends StatelessWidget {
  const AppListTile({
    required this.title,
    super.key,
    this.icon,
    this.onTap,
  });

  final String title;
  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing:
          onTap != null ? Icon(Icons.adaptive.arrow_forward_rounded) : null,
      onTap: onTap,
    );
  }
}

import 'package:flutter/material.dart';

class ListTileAccount extends StatelessWidget {
  const ListTileAccount({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  final String title;
  final IconData icon;
  final Function()? onTap;

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

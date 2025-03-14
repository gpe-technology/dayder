import 'package:flutter/material.dart';

/// A list tile widget.
class AppListTile extends StatelessWidget {
  /// Creates a list tile widget.
  const AppListTile({required this.title, super.key, this.icon, this.onTap});

  /// The title of the list tile.
  final Widget title;

  /// The icon of the list tile.
  final Icon? icon;

  /// The callback function when the list tile is tapped.
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: title,
      trailing:
          onTap != null
              ? Icon(Icons.adaptive.arrow_forward_rounded, size: 14)
              : null,
      onTap: onTap,
    );
  }
}

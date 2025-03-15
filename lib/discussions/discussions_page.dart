import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DiscussionsPage extends StatelessWidget {
  const DiscussionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Discussion')));
  }
}

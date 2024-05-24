import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'Announcement')
class AnnouncementPage extends StatelessWidget {
  const AnnouncementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Announcement"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Publish',
        mini: true,
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}

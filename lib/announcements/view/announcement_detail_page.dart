import 'package:auto_route/auto_route.dart';
import 'package:dayder/announcements/announcements.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AnnouncementDetailPage extends StatelessWidget {
  const AnnouncementDetailPage({required this.announcement, super.key});

  final Announcement announcement;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail')),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(announcement.url),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Text(
                  announcement.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(announcement.description),
                Text(announcement.price),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:auto_route/annotations.dart';
import 'package:dayder/src/data/models/announcement_model/announcement_model.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'Detail')
class AnnouncementDetail extends StatelessWidget {
  const AnnouncementDetail({super.key, required this.announcement});

  final AnnouncementModel announcement;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(announcement.url),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Text(
                  announcement.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(announcement.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:dayder/src/app_router.gr.dart';
import 'package:flutter/material.dart';

import '../../data/models/announcement_model/announcement_model.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard(
    this.announcement, {
    super.key,
  });

  final AnnouncementModel announcement;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushRoute(Detail(announcement: announcement));
      },
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Card(
              margin: EdgeInsets.zero,
              elevation: 0.0,
              child: Image.network(announcement.url, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Text(
              announcement.description,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 2,
            ),
          ),
          Text(
            '€ ${announcement.price}',
            style: const TextStyle(overflow: TextOverflow.ellipsis),
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}

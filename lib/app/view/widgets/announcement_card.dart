import 'package:dayder/data/models/announcement_model.dart';
import 'package:flutter/material.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({
    required this.announcement,
    this.onTap,
    super.key,
  });

  final AnnouncementModel announcement;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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

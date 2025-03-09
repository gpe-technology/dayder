import 'package:cached_network_image/cached_network_image.dart';
import 'package:dayder/announcement/announcement.dart';
import 'package:flutter/material.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({required this.announcement, this.onTap, super.key});

  final AnnouncementModel announcement;
  final VoidCallback? onTap;

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
              elevation: 0,
              child: CachedNetworkImage(
                imageUrl: announcement.url,
                placeholder:
                    (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Text('$error'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
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

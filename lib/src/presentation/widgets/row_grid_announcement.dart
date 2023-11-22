import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../logics/announcement/announcement.dart';
import 'announcement_card.dart';

class RowGridAnnouncement extends ConsumerWidget {
  const RowGridAnnouncement({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final announcements = ref.watch(getAllProvider);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SizedBox(
        height: 220,
        child: Card(
          elevation: .2,
          shape: const Border(),
          margin: EdgeInsets.zero,
          child: announcements.when(
            data: (data) {
              return GridView.count(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8.0),
                childAspectRatio: 4.5 / 3,
                crossAxisCount: 1,
                mainAxisSpacing: 12.0,
                crossAxisSpacing: 12.0,
                children: data
                    .map(
                      (e) => AnnouncementCard(
                        e,
                        onTap: () {
                          Logger().i(e.id);
                        },
                      ),
                    )
                    .toList(),
              );
            },
            error: (error, _) => Center(child: Text(error.toString())),
            loading: () => const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }
}

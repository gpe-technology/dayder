import 'package:auto_route/auto_route.dart';
import 'package:dayder/presentation/announcement/logic/announcement.dart';
import 'package:dayder/presentation/widgets/announcement_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage(name: 'Announcement')
class AnnouncementPage extends ConsumerWidget {
  const AnnouncementPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final announcements = ref.watch(getAllProvider);
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(getAllProvider.future),
        child: announcements.when(
          data: (data) {
            return GridView.count(
              padding: const EdgeInsets.all(8.0),
              childAspectRatio: 3 / 4.5,
              crossAxisCount: 2,
              mainAxisSpacing: 12.0,
              crossAxisSpacing: 12.0,
              children: data
                  .map(
                    (e) => AnnouncementCard(
                      announcement: e,
                      onTap: () {},
                    ),
                  )
                  .toList(),
            );
          },
          error: (error, _) => Center(child: Text(error.toString())),
          loading: () => const SizedBox.shrink(),
        ),
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

import 'package:auto_route/auto_route.dart';
import 'package:dayder/src/app_router.gr.dart';
import 'package:dayder/src/presentation/logics/announcement_future_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../widgets/announcement_card.dart';

@RoutePage(name: 'Search')
class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final announcements = ref.watch(announcementFutureProvider);
    const double spacing = 15.0;
    const double childAspectRation = 3 / 4.5;
    const int crossAxisCount = 2;
    return Scaffold(
      body: announcements.when(
        data: (data) {
          return RefreshIndicator(
            onRefresh: () async =>
                ref.refresh(announcementFutureProvider.future),
            child: GridView.count(
              padding: const EdgeInsets.all(8.0),
              childAspectRatio: childAspectRation,
              crossAxisCount: crossAxisCount,
              mainAxisSpacing: spacing,
              crossAxisSpacing: spacing,
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
            ),
          );
        },
        error: (error, _) => Center(child: Text(error.toString())),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushRoute(const Publish());
        },
        tooltip: 'Publish',
        mini: true,
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}

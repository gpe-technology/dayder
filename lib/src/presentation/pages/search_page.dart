import 'package:auto_route/auto_route.dart';
import 'package:dayder/src/app_router.gr.dart';
import 'package:dayder/src/presentation/logics/fetch_announcement/fetch_announcements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/column_grid_announcement.dart';
import '../widgets/row_grid_announcement.dart';

@RoutePage(name: 'Search')
class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ScrollController();
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => ref.refresh(fetchAnnouncementProvider.future),
        child: Scrollbar(
          controller: scrollController,
          child: ListView(
            controller: scrollController,
            children: const [
              RowGridAnnouncement(),
              ColumnGridAnnouncement(),
            ],
          ),
        ),
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

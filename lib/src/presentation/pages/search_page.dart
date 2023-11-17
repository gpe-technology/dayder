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
    const int crossAxisCount = 1;
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => ref.refresh(announcementFutureProvider.future),
        child: Scrollbar(
          thumbVisibility: true,
          child: ListView(
            children: [
              SizedBox(
                height: 220,
                child: announcements.when(
                  data: (data) {
                    return GridView.count(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(8.0),
                      childAspectRatio: 1 / childAspectRation,
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
                    );
                  },
                  error: (error, _) => Center(child: Text(error.toString())),
                  loading: () => const SizedBox.shrink(),
                ),
              ),
              announcements.when(
                data: (data) {
                  return GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(8.0),
                    childAspectRatio: childAspectRation,
                    crossAxisCount: crossAxisCount * 2,
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
                  );
                },
                error: (error, _) => Center(child: Text(error.toString())),
                loading: () => const SizedBox.shrink(),
              ),
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

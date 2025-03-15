import 'package:auto_route/auto_route.dart';
import 'package:dayder/announcements/announcements.dart';
import 'package:dayder/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AnnouncementsPage extends StatelessWidget {
  const AnnouncementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnnouncementsCubit(),
      child: BlocBuilder<AnnouncementsCubit, AnnouncementsState>(
        builder: (context, state) {
          return switch (state) {
            AnnouncementsLoaded(:final data) => Scaffold(
              appBar: AppBar(
                title: const Text('Marketplace'),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed:
                        () => context.pushRoute(const AnnouncementAddRoute()),
                  ),
                ],
              ),
              body: GridView.count(
                padding: const EdgeInsets.all(8),
                childAspectRatio: 3 / 4.5,
                crossAxisCount: 3,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                children:
                    data
                        .map(
                          (announcement) => AnnouncementCard(
                            announcement: announcement,
                            onTap:
                                () => context.pushRoute(
                                  AnnouncementDetailRoute(
                                    announcement: announcement,
                                  ),
                                ),
                          ),
                        )
                        .toList(),
              ),
            ),
            AnnouncementsError(:final error) => Scaffold(
              body: Center(child: Text(error.toString())),
            ),
            AnnouncementsLoading() => const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          };
        },
      ),
    );
  }
}

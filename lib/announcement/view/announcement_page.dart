import 'package:alpha_ui/alpha_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dayder/announcement/announcement.dart';
import 'package:dayder/app/app.dart';
import 'package:dayder/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AnnouncementPage extends StatelessWidget {
  const AnnouncementPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => AnnouncementCubit(),
      child: BlocBuilder<AnnouncementCubit, AnnouncementState>(
        builder: (context, state) {
          return switch (state) {
            Loaded(:final data) => Scaffold(
              appBar: AppBar(title: const Text('Announcements')),
              body: GridView.count(
                padding: const EdgeInsets.all(8),
                childAspectRatio: 3 / 4.5,
                crossAxisCount: GridCrossCount.valueOf(width),
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
              persistentFooterButtons: [
                ButtonIcon(
                  onPressed: () {},
                  label: const Text('Add Announcement'),
                  icon: const Icon(Icons.add_rounded),
                ),
              ],
            ),
            Error(:final error) => Scaffold(
              body: Center(child: Text(error.toString())),
            ),
            Loading() => const SplashPage(),
          };
        },
      ),
    );
  }
}

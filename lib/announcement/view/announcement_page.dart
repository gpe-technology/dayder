import 'package:auto_route/auto_route.dart';
import 'package:dayder/announcement/cubit/announcement_cubit.dart';
import 'package:dayder/presentation/splash_page.dart';
import 'package:dayder/presentation/widgets/announcement_card.dart';
import 'package:dayder/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'Announcement')
class AnnouncementPage extends StatelessWidget {
  const AnnouncementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnnouncementCubit(),
      child: BlocBuilder<AnnouncementCubit, AnnouncementState>(
        builder: (context, state) {
          return switch (state.status) {
            AnnouncementStatus.loading => const SplashPage(),
            AnnouncementStatus.loaded => Scaffold(
                body: GridView.count(
                  padding: const EdgeInsets.all(8.0),
                  childAspectRatio: 3 / 4.5,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12.0,
                  crossAxisSpacing: 12.0,
                  children: state.data
                      .map(
                        (announcement) => AnnouncementCard(
                          announcement: announcement,
                          onTap: () async {
                            await context.pushRoute(
                              Detail(announcement: announcement),
                            );
                          },
                        ),
                      )
                      .toList(),
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () {},
                  tooltip: 'Publish',
                  mini: true,
                  child: const Icon(Icons.add_rounded),
                ),
              ),
          };
        },
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:dayder/announcement/cubit/announcement_cubit.dart';
import 'package:dayder/announcement/utils/utils.dart';
import 'package:dayder/announcement/view/widgets/announcement_card.dart';
import 'package:dayder/app/router/router.gr.dart';
import 'package:dayder/app/view/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'Announcement')
class AnnouncementPage extends StatelessWidget {
  const AnnouncementPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => AnnouncementCubit(),
      child: BlocBuilder<AnnouncementCubit, AnnouncementState>(
        builder: (context, state) {
          return switch (state.status) {
            AnnouncementStatus.loading => const SplashPage(),
            AnnouncementStatus.loaded => Scaffold(
                appBar:
                    AppBar(title: Text(context.router.current.title(context))),
                body: GridView.count(
                  padding: const EdgeInsets.all(8.0),
                  childAspectRatio: 3 / 4.5,
                  crossAxisCount: GridCrossCount.valueOf(width),
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

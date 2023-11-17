import 'package:auto_route/auto_route.dart';
import 'package:dayder/src/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'Search')
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.root.push(const Publish());
        },
        tooltip: 'Publish',
        mini: true,
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}

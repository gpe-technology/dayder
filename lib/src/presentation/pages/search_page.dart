import 'package:auto_route/auto_route.dart';
import 'package:dayder/src/route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushRoute(const PublishRoute());
        },
        tooltip: 'Publish',
        mini: true,
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}

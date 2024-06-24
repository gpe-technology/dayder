import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginRoot extends StatelessWidget {
  const LoginRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Email'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Phone'),
          ),
        ],
      ),
    );
  }
}

import 'package:dayder/features/authentication/presentation/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Login page has a title ', (widgetTester) async {
    await widgetTester.pumpWidget(const ProviderScope(
      child: MaterialApp(home: LoginPage()),
    ));
    final titleFinder = find.text('Login');
    expect(titleFinder, findsOneWidget);
  });
}

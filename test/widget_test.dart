// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:waves/app.dart';

import 'package:waves/presentation/notifiers/playing/playing.dart';

void main() {
  testWidgets('Waves transition smoke test', (WidgetTester tester) async {
    final PlayingNotifier playingNotifier = PlayingNotifier();

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MyApp(
        playingNotifier: playingNotifier,
      ),
    );

    // Verify that our counter starts at 0.
    expect(find.text('Waves transition'), findsOneWidget);
    expect(find.text('Home screen'), findsNothing);

    await tester.tap(find.byIcon(Icons.arrow_forward));

    await tester.pumpAndSettle(const Duration(seconds: 1));

    // Verify that our counter has incremented.
    expect(find.text('Waves transition'), findsNothing);
    expect(find.text('Home screen'), findsOneWidget);
  });
}

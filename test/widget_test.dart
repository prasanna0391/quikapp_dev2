// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quikapp_flutter_latest/module/myapp.dart';




void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Define dummy test values for environment-based config
    const testWebUrl = "https://example.com";
    const testIsBottomMenu = true;
    const testIsSplashEnabled = false;
    const testSplashUrl = "";
    const testSplashBgUrl = "";
    const testSplashDuration = 3;
    const testSplashAnimation = "zoom";
    final testBottomMenuItems = [
      {"icon": "home", "label": "Home", "url": "https://example.com/home"},
    ];

    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp(
      webUrl: testWebUrl,
      isBottomMenu: testIsBottomMenu,
      isSplash: testIsSplashEnabled,
      splashLogo: testSplashUrl,
      splashBg: testSplashBgUrl,
      splashDuration: testSplashDuration,
      splashAnimation: testSplashAnimation,
      bottomMenuItems: testBottomMenuItems,
    ));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

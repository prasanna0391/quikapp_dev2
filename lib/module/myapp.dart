import 'package:flutter/material.dart';

import 'main_home.dart' show MainHome;
import 'splash_screen.dart';
import '../main.dart';

class MyApp extends StatefulWidget {

  final String webUrl;
  final bool isBottomMenu;
  final bool isSplash;
  final String splashLogo;
  final String splashBg;
  final int splashDuration;
  final String splashAnimation;
  final List<Map<String, dynamic>> bottomMenuItems;
  const MyApp({super.key, required this.webUrl, required this.isBottomMenu, required this.isSplash, required this.splashLogo, required this.splashBg, required this.splashDuration, required this.splashAnimation, required this.bottomMenuItems});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showSplash =isSplashEnabled;

  @override
  void initState() {
    super.initState();
    if (showSplash) {
      Future.delayed(Duration(seconds: splashDuration), () {
        setState(() {
          showSplash = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: showSplash
          ? SplashScreen(splashLogo: widget.splashLogo, splashBg: widget.splashBg, splashAnimation: widget.splashAnimation,)
          : MainHome(webUrl: widget.webUrl, isBottomMenu: widget.isBottomMenu, bottomMenuItems: widget.bottomMenuItems,),
    );
  }
}
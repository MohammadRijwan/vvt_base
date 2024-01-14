library vvt_base;

import 'package:flutter/material.dart';
import 'package:vvt_base/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  final String appTitle;
  final ThemeData? themeData;
  const MyApp({super.key, required this.appTitle, this.themeData});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: themeData ??
          ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
      home: const SplashScreen(),
    );
  }
}

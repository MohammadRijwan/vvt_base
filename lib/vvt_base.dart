library vvt_base;

import 'package:flutter/material.dart';
import 'package:vvt_base/splash/splash_screen.dart';
import 'package:vvt_base/util/app_assets.dart';

class MyApp extends StatefulWidget {
  final String appTitle;
  final ThemeData? themeData;
  final AppAssets? appAssets;
  const MyApp(
      {super.key, required this.appTitle, this.themeData, this.appAssets});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    appAssets = widget.appAssets;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.appTitle,
      theme: widget.themeData ??
          ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
      home: const SplashScreen(),
    );
  }
}

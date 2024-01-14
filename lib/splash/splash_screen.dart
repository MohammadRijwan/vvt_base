import 'package:flutter/material.dart';
import 'package:vvt_base/res.dart';
import 'package:vvt_base/util/app_assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
            appAssets?.logo != null ? appAssets!.logo! : Res.logo,
            package: appAssets?.logo == null ? 'vvt_base' : null),
      ),
    );
  }
}

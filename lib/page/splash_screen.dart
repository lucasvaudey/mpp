import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:mpp/models/token.dart';
import 'package:mpp/models/user.dart';
import 'package:mpp/page/connection/connection_home.dart';
import 'package:mpp/page/home_page.dart';
import 'package:mpp/utils/size_config.dart';

class SplashScreen extends StatefulWidget {
  static const String route = '/splash';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    User? user = Hive.box<User>("user").get("current");
    Timer(const Duration(seconds: 2), () {
      if (user != null) {
        Navigator.of(context)
            .pushNamedAndRemoveUntil(HomePage.route, (route) => false);
      } else {
        Navigator.of(context)
            .pushNamedAndRemoveUntil(ConnectionHome.route, (route) => false);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/anim/loading.json'),
      ),
    );
  }
}

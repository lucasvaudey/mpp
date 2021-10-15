import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/models/token.dart';
import 'package:mpp/page/home_page.dart';
import 'package:mpp/page/login.dart';

class SplashScreen extends StatefulWidget {
  static const String route = '/splash';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      getToken().then((value) {
        if (value) {
          Navigator.pushNamedAndRemoveUntil(
              context, HomePage.route, (route) => false);
        } else {
          Navigator.pushNamedAndRemoveUntil(
              context, Login.route, (route) => false);
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Splash screen !"),
    );
  }

  Future<bool> getToken() async {
    Token? token = Hive.box<Token>("token").get("current");
    if (token != null) {
      return true;
    }
    return false;
  }
}

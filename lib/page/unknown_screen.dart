import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mpp/page/splash_screen.dart';

class UnknownScreen extends StatefulWidget {
  static const String route = '/404';
  const UnknownScreen({Key? key}) : super(key: key);

  @override
  _UnknownScreenState createState() => _UnknownScreenState();
}

class _UnknownScreenState extends State<UnknownScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, SplashScreen.route, (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("404 !"),
    );
  }
}

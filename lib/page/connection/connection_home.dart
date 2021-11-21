import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mpp/const/assets.dart';
import 'package:mpp/const/color.dart';
import 'package:mpp/const/style.dart';
import 'package:mpp/page/connection/login.dart';
import 'package:mpp/page/connection/register.dart';
import 'package:mpp/utils/size_config.dart';

class ConnectionHome extends StatefulWidget {
  static const String route = '/connection';
  const ConnectionHome({Key? key}) : super(key: key);

  @override
  _ConnectionHomeState createState() => _ConnectionHomeState();
}

class _ConnectionHomeState extends State<ConnectionHome> {
  bool isVisible = false;
  @override
  void initState() {
    Timer(const Duration(milliseconds: 100), () {
      setState(() {
        isVisible = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrown,
      body: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: isVisible ? 1.0 : 0.0,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: sizeConfig.safeW(27),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                logoPath,
                height: 183.h,
              ),
              SizedBox(
                height: 109.h,
              ),
              TextButton(
                style: kConnectionButton,
                onPressed: () {
                  Navigator.of(context).pushNamed(Login.route);
                },
                child: Center(
                  child: Text("Login", style: kConnectionButtonText),
                ),
              ),
              SizedBox(
                height: 11.h,
              ),
              TextButton(
                style: kConnectionButton,
                onPressed: () {
                  Navigator.of(context).pushNamed(Register.route);
                },
                child: Center(
                    child: Text("Register", style: kConnectionButtonText)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

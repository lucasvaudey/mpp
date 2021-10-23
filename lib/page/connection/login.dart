import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mpp/const/color.dart';
import 'package:mpp/provider/login_provider.dart';
import 'package:mpp/utils/size_config.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  static const String route = '/login';
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  late AnimationController _controllerFade;
  late Animation _fadeAnimation;
  @override
  void initState() {
    _controllerFade = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000))
      ..addListener(() {
        setState(() {});
      });
    _fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(_controllerFade);
    Timer(const Duration(milliseconds: 200), () {
      _controllerFade.forward();
    });
    super.initState();
  }

  @override
  void dispose() {
    _controllerFade.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginProvider(context),
      child: Consumer<LoginProvider>(
        builder: (context, provider, child) => Scaffold(
          body: Opacity(
            opacity: _fadeAnimation.value,
            child: Form(
              key: provider.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: provider.emailController,
                    maxLines: 1,
                    cursorColor: kPrimary,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: kPrimary, width: 0.5),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: kPrimary, width: 0.5),
                      ),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: kPrimary, width: 0.5),
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.red, width: 0.5),
                      ),
                      fillColor: kLightPink,
                      filled: true,
                      label: Text("Email ou pseudo :",
                          style: TextStyle(fontSize: sizeConfig.sizeH(20))),
                    ),
                  ),
                  TextFormField(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

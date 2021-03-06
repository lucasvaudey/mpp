import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mpp/const/color.dart';
import 'package:mpp/provider/login_provider.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  static const String route = '/login';
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  late AnimationController _controllerFade;
  late Animation _fadeAnimation;
  @override
  void initState() {
    _controllerFade = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..addListener(() {
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
          backgroundColor: kBrown,
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
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.r)),
                        borderSide:
                            const BorderSide(color: kPrimary, width: 0.5),
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
                      label: Text(
                        "Email ou pseudo :",
                        style: TextStyle(fontSize: 20.h),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextFormField(
                    controller: provider.passwordController,
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
                      label: Text(
                        "Mot de passe",
                        style: TextStyle(fontSize: 20.sp),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextButton(
                    onPressed: () {
                      provider.signIn();
                    },
                    child: const Text("Validate"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

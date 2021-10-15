import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const String route = '/login';
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Login !"));
  }
}

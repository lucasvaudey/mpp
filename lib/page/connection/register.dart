import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  static const String route = '/register';
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text('Register'));
  }
}

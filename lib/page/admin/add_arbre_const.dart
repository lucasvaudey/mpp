import 'package:flutter/material.dart';

class AddArbreConst extends StatefulWidget {
  static const String route = '/addArbreConst';
  const AddArbreConst({Key? key}) : super(key: key);

  @override
  _AddArbreConstState createState() => _AddArbreConstState();
}

class _AddArbreConstState extends State<AddArbreConst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajouter un arbre"),
      ),
      body: Container(),
    );
  }
}

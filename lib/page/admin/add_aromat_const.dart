import 'package:flutter/material.dart';

class AddAromatConst extends StatefulWidget {
  static const String route = '/addAromatConst';
  const AddAromatConst({Key? key}) : super(key: key);

  @override
  _AddAromatConstState createState() => _AddAromatConstState();
}

class _AddAromatConstState extends State<AddAromatConst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajouter un aromat"),
      ),
      body: Container(),
    );
  }
}

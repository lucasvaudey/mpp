import 'package:flutter/material.dart';

class AddLegumeConst extends StatefulWidget {
  static const String route = '/addLegumeConst';
  const AddLegumeConst({Key? key}) : super(key: key);

  @override
  _AddLegumeConstState createState() => _AddLegumeConstState();
}

class _AddLegumeConstState extends State<AddLegumeConst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajouter un legume"),
      ),
      body: Container(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class GardenPiece extends StatefulWidget {
  const GardenPiece({Key? key}) : super(key: key);

  @override
  State<GardenPiece> createState() => _GardenPieceState();
}

class _GardenPieceState extends State<GardenPiece> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 30,
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
    );
  }
}

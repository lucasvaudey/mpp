import 'package:flutter/material.dart';
import 'package:mpp/widgets/garden/garden_piece.dart';

class Potager extends StatefulWidget {
  const Potager({Key? key}) : super(key: key);

  @override
  State<Potager> createState() => _PotagerState();
}

class _PotagerState extends State<Potager> {
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      child: Stack(
        children: const [
          GardenPiece(),
        ],
      ),
    );
  }
}

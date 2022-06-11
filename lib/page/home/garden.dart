import 'dart:math';
import 'package:vector_math/vector_math_64.dart' as vector;

import 'package:flutter/material.dart';
import 'package:mpp/widgets/garden/garden_piece.dart';

class Garden extends StatefulWidget {
  const Garden({Key? key}) : super(key: key);

  @override
  State<Garden> createState() => _GardenState();
}

class _GardenState extends State<Garden> with TickerProviderStateMixin {
  late Animation<Matrix4> animationMatrix;
  AnimationController? controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animationMatrix = Matrix4Tween(
      begin: Matrix4.identity(),
      end: Matrix4.identity()
        ..setEntry(0, 0, 1)
        ..setEntry(1, 0, -0.5)
        ..setEntry(0, 1, 1)
        ..setEntry(1, 1, 0.5),
    ).animate(controller!);

    controller?.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      maxScale: 10,
      minScale: 0.4,
      boundaryMargin: const EdgeInsets.all(double.infinity),
      child: AnimatedBuilder(
        animation: controller!,
        builder: (context, anim) {
          return Transform(
            transform: animationMatrix.value,
            child: Stack(
              children: const [
                Positioned(
                  top: 0,
                  left: 0,
                  child: GardenPiece(
                    size: Size(100, 50),
                    offset: Offset(0, 0),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 100,
                  child: GardenPiece(
                    size: Size(50, 50),
                    offset: Offset(0, 0),
                  ),
                ),
                // Positioned(
                //   top: 100 * (1 / 3) - (50 * (1 / 3) / 2),
                //   left: 50,
                //   child: GardenPiece(
                //     size: Size(50, 50 * (1 / 3)),
                //   ),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}

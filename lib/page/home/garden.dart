import 'package:flutter/material.dart';
import 'package:mpp/widgets/garden/garden_piece.dart';

class Garden extends StatefulWidget {
  const Garden({Key? key}) : super(key: key);

  @override
  State<Garden> createState() => _GardenState();
}

class _GardenState extends State<Garden> with TickerProviderStateMixin {
  late Animation<double> animation10;
  late Animation<double> animation01;
  late Animation<double> animation11;
  AnimationController? controller;
  Matrix4 endMatrix = Matrix4.identity()
    ..setEntry(0, 0, 1)
    ..setEntry(1, 0, -0.5)
    ..setEntry(0, 1, 1)
    ..setEntry(1, 1, 0.5);

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation01 = Tween<double>(begin: 0, end: 1).animate(controller!);
    animation11 = Tween<double>(begin: 1, end: 0.5).animate(controller!);
    animation10 = Tween<double>(begin: 0, end: -0.5).animate(controller!);

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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller?.reset();
          controller?.forward();
        },
        child: Icon(Icons.redo),
      ),
      body: InteractiveViewer(
        maxScale: 10,
        minScale: 0.4,
        boundaryMargin: const EdgeInsets.all(double.infinity),
        child: AnimatedBuilder(
          animation: controller!,
          builder: (context, anim) {
            return Transform(
              transform: Matrix4.identity()
                ..setEntry(0, 0, 1)
                ..setEntry(1, 0, animation10.value)
                ..setEntry(0, 1, animation01.value)
                ..setEntry(1, 1, animation11.value),
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
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

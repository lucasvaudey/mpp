import 'dart:math';

import 'package:flutter/material.dart';

class GardenPiece extends StatefulWidget {
  final Size size;
  final Offset offset;
  const GardenPiece({
    Key? key,
    required this.size,
    required this.offset,
  }) : super(key: key);

  @override
  State<GardenPiece> createState() => _GardenPieceState();
}

class _GardenPieceState extends State<GardenPiece>
    with TickerProviderStateMixin {
  final invertedMatrix = Matrix4.identity()
    ..setEntry(0, 0, 1)
    ..setEntry(1, 0, -0.5)
    ..setEntry(0, 1, 1)
    ..setEntry(1, 1, 0.5)
    ..invert();
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Transform.translate(
          offset: widget.offset,
          child: Stack(
            children: [
              Transform(
                transform: Matrix4.identity(),
                child: Material(
                  elevation: 30,
                  child: Container(
                    width: widget.size.width,
                    height: widget.size.height,
                    color: Colors.brown,
                  ),
                ),
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..translate(
                    widget.offset.dy,
                    0.0,
                  ),
                child: SizedBox(
                  height: widget.size.height,
                  width: widget.size.width,
                  child: CustomPaint(
                    painter: SailFloor(Colors.brown),
                  ),
                ),
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..translate(0.0, widget.offset.dx),
                child: SizedBox(
                  height: widget.size.height,
                  width: widget.size.width,
                  child: CustomPaint(
                    painter: SailFloor(Colors.brown),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: widget.size.width,
          height: widget.size.height,
          color: Theme.of(context).primaryColor,
          child: Center(
            child: Container(
              width: widget.size.width / 2,
              height: widget.size.height / 2,
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
        ),
        SizedBox(
          height: widget.size.height,
          width: widget.size.width,
          child: Center(
            child: Transform(
              alignment: Alignment.center,
              transform: invertedMatrix,
              child: const Text(
                "Je suis au milieu",
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SailFloor extends CustomPainter {
  Color color = Colors.red;

  SailFloor(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    double factor = 10;
    Path path = Path();
    Paint paint = Paint()..color = color;
    path.moveTo(factor, 0);
    path.lineTo(size.width - factor, 0);
    path.lineTo(size.width, factor);
    path.lineTo(size.width, size.height - factor);
    path.lineTo(size.width - factor, size.height);
    path.lineTo(10, size.height);
    path.lineTo(0, size.height - factor);
    path.lineTo(0, 10);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

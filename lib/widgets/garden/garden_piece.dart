import 'package:flutter/material.dart';

class GardenPiece extends StatefulWidget {
  final Size size;
  final Offset offset;
  const GardenPiece({Key? key, required this.size, required this.offset})
      : super(key: key);

  @override
  State<GardenPiece> createState() => _GardenPieceState();
}

class _GardenPieceState extends State<GardenPiece>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Transform.translate(
        //   offset: const Offset(0, 10),
        //   child: CustomPaint(
        //     size: widget.size,
        //     painter: IsomectricPlatform(Colors.brown),
        //   ),
        // ),
        // CustomPaint(
        //   size: widget.size,
        //   painter: IsomectricPlatform(Theme.of(context).primaryColor),
        // ),
        Transform.translate(
          offset: widget.offset,
          child: Container(
            width: widget.size.width,
            height: widget.size.height,
            color: Colors.brown,
            child: Center(
              child: Container(
                width: widget.size.width / 2,
                height: widget.size.height / 2,
                color: Theme.of(context).secondaryHeaderColor,
              ),
            ),
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
      ],
    );
  }
}

class IsomectricPlatform extends CustomPainter {
  Color color = Colors.black;
  IsomectricPlatform(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = color;
    Path path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(0, size.height / 2);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

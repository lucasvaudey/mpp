import 'package:flutter/material.dart';
import 'package:mpp/provider/garden_provider.dart';
import 'package:mpp/widgets/garden/garden_piece.dart';
import 'package:provider/provider.dart';

class Garden extends StatefulWidget {
  const Garden({Key? key}) : super(key: key);

  @override
  State<Garden> createState() => _GardenState();
}

class _GardenState extends State<Garden> with TickerProviderStateMixin {
  late Animation<double> animation10;
  late Animation<double> animation01;
  late Animation<double> animation11;
  late AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation01 = Tween<double>(begin: 0, end: 1).animate(controller);
    animation11 = Tween<double>(begin: 1, end: 0.5).animate(controller);
    animation10 = Tween<double>(begin: 0, end: -0.5).animate(controller);
    controller.forward().then(
          (value) => Provider.of<GardenProvider>(context, listen: false)
              .isIsometric = true,
        );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<GardenProvider>(builder: (context, provider, _) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (provider.isIsometric) {
              provider.isIsometric = false;
              controller.reverse();
            } else {
              provider.isIsometric = true;
              controller.forward();
            }
          },
          child: const Icon(Icons.redo),
        ),
        body: InteractiveViewer(
          maxScale: 10,
          minScale: 0.4,
          boundaryMargin: const EdgeInsets.all(double.infinity),
          child: AnimatedBuilder(
            animation: controller,
            builder: (context, anim) {
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(0, 0, 1)
                  ..setEntry(1, 0, animation10.value)
                  ..setEntry(0, 1, animation01.value)
                  ..setEntry(1, 1, animation11.value),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 50,
                      left: 100,
                      child: GardenPiece(
                        size: const Size(50, 50),
                        offset: Offset(
                          animation01.value * -10,
                          animation01.value * 10,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 150,
                      child: GardenPiece(
                        size: const Size(60, 500),
                        offset: Offset(
                          animation01.value * -10,
                          animation01.value * 10,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      );
    });
  }
}

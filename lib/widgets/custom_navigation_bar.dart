import 'package:flutter/material.dart';
import 'package:mpp/provider/home_provider.dart';
import 'package:provider/provider.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, _) {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int value) {
          provider.controller.animateToPage(
            value,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        },
        currentIndex: provider.index,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.plumbing), label: "Potager"),
          BottomNavigationBarItem(icon: Icon(Icons.feed), label: "Social"),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Calendar",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.speed), label: "semis"),
          BottomNavigationBarItem(
            icon: Icon(Icons.usb_rounded),
            label: "Profil",
          ),
        ],
      );
    });
  }
}

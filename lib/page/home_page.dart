import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/models/user.dart';
import 'package:mpp/page/admin/admin_panel.dart';
import 'package:mpp/page/splash_screen.dart';

class HomePage extends StatefulWidget {
  static const String route = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User user = Hive.box<User>('user').get('current')!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Home page ! Bonjour ${user.pseudo}"),
            TextButton(
              onPressed: () async {
                await Hive.box<User>('user').clear();
                if (!mounted) {
                  return;
                }
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  SplashScreen.route,
                  (route) => false,
                );
              },
              child: const Text("Déconnexion"),
            ),
            if (user.admin)
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AdminPanel.route);
                },
                child: const Text("Go to admin page"),
              ),
          ],
        ),
      ),
    );
  }
}

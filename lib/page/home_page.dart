import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/models/user.dart';
import 'package:mpp/page/admin/admin_panel.dart';
import 'package:mpp/page/home/calendar.dart';
import 'package:mpp/page/home/garden.dart';
import 'package:mpp/page/home/profil.dart';
import 'package:mpp/page/home/semis_planner.dart';
import 'package:mpp/page/home/social.dart';
import 'package:mpp/page/splash_screen.dart';
import 'package:mpp/provider/garden_provider.dart';
import 'package:mpp/provider/home_provider.dart';
import 'package:mpp/widgets/custom_navigation_bar.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => GardenProvider(),
        ),
      ],
      child: Consumer<HomeProvider>(builder: (context, provider, _) {
        return Scaffold(
          bottomNavigationBar: const CustomNavigationBar(),
          body: PageView(
            physics: provider.index == 0
                ? const NeverScrollableScrollPhysics()
                : null,
            controller: provider.controller,
            onPageChanged: (int page) {
              provider.index = page;
            },
            children: const [
              Garden(),
              Social(),
              Calendar(),
              SemisPlanner(),
              Profil(),
            ],
          ),
        );
      }),
    );
  }
}

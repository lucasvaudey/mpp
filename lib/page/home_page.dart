import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/models/user.dart';
import 'package:mpp/page/admin/admin_panel.dart';
import 'package:mpp/page/home/calendar.dart';
import 'package:mpp/page/home/potager.dart';
import 'package:mpp/page/home/profil.dart';
import 'package:mpp/page/home/semis_planner.dart';
import 'package:mpp/page/home/social.dart';
import 'package:mpp/page/splash_screen.dart';
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
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: Consumer<HomeProvider>(builder: (context, provider, _) {
        return Scaffold(
          bottomNavigationBar: const CustomNavigationBar(),
          body: PageView(
            controller: provider.controller,
            onPageChanged: (int page) {
              provider.index = page;
            },
            children: const [
              Potager(),
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

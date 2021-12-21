import 'dart:async';
import 'dart:io';

import 'package:artemis/artemis.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/graphql/generated/graphql_api.graphql.dart';
import 'package:mpp/graphql/graphql.dart';
import 'package:mpp/models/token.dart';
import 'package:mpp/models/user.dart';
import 'package:mpp/page/admin/admin_panel.dart';
import 'package:mpp/page/connection/connection_home.dart';
import 'package:mpp/page/connection/register.dart';
import 'package:mpp/page/home_page.dart';
import 'package:mpp/page/connection/login.dart';
import 'package:mpp/page/splash_screen.dart';
import 'package:mpp/page/unknown_screen.dart';

class AppProvider extends ChangeNotifier {
  Map<String, Widget Function(BuildContext)> routes = {
    SplashScreen.route: (context) => const SplashScreen(),
    Login.route: (context) => const Login(),
    ConnectionHome.route: (context) => const ConnectionHome(),
    Register.route: (context) => const Register(),
    UnknownScreen.route: (context) => const UnknownScreen(),
  };

  void addAdminRoute() {
    routes[AdminPanel.route] = (context) => const AdminPanel();
  }

  void addUserRoute() {
    routes[HomePage.route] = (context) => const HomePage();
  }

  void addPremiumRoute() {
    //TODO: add admin route
  }
  Future<void> init(BuildContext context) async {
    User? user = Hive.box<User>('user').get('current');
    if (user != null) {
      await getUserInfo(user.token);
      addUserRoute();
      if (user.admin) {
        addAdminRoute();
      }
      if (user.premium) {
        addPremiumRoute();
      }
    }
    Timer(const Duration(seconds: 2), () {
      if (user != null) {
        Navigator.of(context)
            .pushNamedAndRemoveUntil(HomePage.route, (route) => false);
      } else {
        Navigator.of(context)
            .pushNamedAndRemoveUntil(ConnectionHome.route, (route) => false);
      }
    });
  }

  Future<void> getUserInfo(Token token) async {
    ArtemisClient _client = getClient(token.access);
    final response = await _client.execute(MeQuery());
    if (response.data?.me.user != null) {
      User newUser = User.fromMeQuery(response.data!.me.user!, token);
      Hive.box<User>('user').put('current', newUser);
    }
  }
}

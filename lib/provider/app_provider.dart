import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/models/user.dart';
import 'package:mpp/page/connection/connection_home.dart';
import 'package:mpp/page/connection/register.dart';
import 'package:mpp/page/home_page.dart';
import 'package:mpp/page/connection/login.dart';
import 'package:mpp/page/splash_screen.dart';
import 'package:mpp/page/unknown_screen.dart';

class AppProvider extends ChangeNotifier {
  bool isAuth = false;
  bool isAdmin = false;
  bool isPremium = false;
  Map<String, Widget Function(BuildContext)> routes = {
    SplashScreen.route: (context) => const SplashScreen(),
    Login.route: (context) => const Login(),
    ConnectionHome.route: (context) => const ConnectionHome(),
    Register.route: (context) => const Register(),
    UnknownScreen.route: (context) => const UnknownScreen(),
  };
  void addAdminRoute() {
    //TODO: add admin route
  }
  void addUserRoute() {
    routes[HomePage.route] = (context) => const HomePage();
    notifyListeners();
    //TODO: add admin route
  }

  void addPremiumRoute() {
    //TODO: add admin route
  }
  init() {
    User? user = Hive.box<User>('user').get('current');
    if (user != null) {
      addUserRoute();
      if (user.admin) {
        addAdminRoute();
      }
      if (user.premium) {
        addPremiumRoute();
      }
    }
  }
}

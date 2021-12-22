import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/models/const/const_element.dart';
import 'package:mpp/models/pot.dart';
import 'package:mpp/models/semis.dart';
import 'package:mpp/models/terrain.dart';
import 'package:mpp/models/token.dart';
import 'package:mpp/models/user.dart';
import 'package:mpp/page/splash_screen.dart';
import 'package:mpp/page/unknown_screen.dart';
import 'package:mpp/provider/app_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();
  Hive
    ..registerAdapter(UserAdapter())
    ..registerAdapter(TerrainAdapter())
    ..registerAdapter(SemisAdapter())
    ..registerAdapter(PotAdapter())
    ..registerAdapter(TokenAdapter());
  await Hive.openBox<User>("user");
  await Hive.openBox<ConstElement>("const_element");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(395, 812),
        builder: () {
          return ChangeNotifierProvider(
            create: (context) => AppProvider(),
            child:
                Consumer<AppProvider>(builder: (context, appProvider, child) {
              return MaterialApp(
                routes: appProvider.routes,
                onGenerateRoute: (settings) {
                  if (settings.name == null) {
                    return MaterialPageRoute(
                        builder: appProvider.routes[UnknownScreen.route]!);
                  }
                  if (appProvider.routes.keys.contains(settings.name)) {
                    return MaterialPageRoute(
                        builder: appProvider.routes[appProvider.routes.keys
                            .firstWhere(
                                (element) => element == settings.name!)]!);
                  }
                  return MaterialPageRoute(
                      builder: appProvider.routes[UnknownScreen.route]!);
                },
                onUnknownRoute: (settings) {
                  return MaterialPageRoute(
                      builder: appProvider.routes[UnknownScreen.route]!);
                },
                debugShowCheckedModeBanner: false,
                title: 'Mon petit Potager',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                home: const SplashScreen(),
              );
            }),
          );
        });
  }
}

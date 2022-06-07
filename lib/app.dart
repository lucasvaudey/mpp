import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mpp/page/splash_screen.dart';
import 'package:mpp/page/unknown_screen.dart';
import 'package:mpp/provider/app_provider.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(395, 812),
      builder: (_, __) {
        return ChangeNotifierProvider(
          create: (context) => AppProvider(),
          child: Consumer<AppProvider>(builder: (context, appProvider, child) {
            return MaterialApp(
              routes: appProvider.routes,
              onGenerateRoute: (settings) {
                if (settings.name == null) {
                  return MaterialPageRoute(
                    builder: appProvider.routes[UnknownScreen.route]!,
                  );
                }
                if (appProvider.routes.keys.contains(settings.name)) {
                  return MaterialPageRoute(
                    builder: appProvider.routes[appProvider.routes.keys
                        .firstWhere((element) => element == settings.name!)]!,
                  );
                }
                return MaterialPageRoute(
                  builder: appProvider.routes[UnknownScreen.route]!,
                );
              },
              onUnknownRoute: (settings) {
                return MaterialPageRoute(
                  builder: appProvider.routes[UnknownScreen.route]!,
                );
              },
              navigatorKey: navigatorKey,
              debugShowCheckedModeBanner: false,
              title: 'Mon petit Potager',
              theme: ThemeData(
                useMaterial3: true,
              ),
              home: const SplashScreen(),
            );
          }),
        );
      },
    );
  }
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

import 'package:artemis/artemis.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/app.dart';
import 'package:mpp/graphql/generated/graphql_api.graphql.dart';
import 'package:mpp/graphql/graphql.dart';
import 'package:mpp/models/token.dart';
import 'package:mpp/models/user.dart';
import 'package:mpp/page/splash_screen.dart';

///Return true if a we need to process the error to the user or not
Future<bool> errorProcessing(
  GraphQLResponse result,
  Function callBack,
) async {
  if (result.hasErrors) {
    debugPrint(result.errors.toString());
    if (result.errors?.first.message == "NO_INTERNET") {
      return true;
    }

    if (result.errors?.first.extensions?["code"] == "EXPIRED_TOKEN") {
      bool? hasRefresh = await refreshToken();
      if (hasRefresh ?? false) {
        await callBack();
        return false;
      }
      //On retourne false pour indiquer que l'on a plus rien à faire l'utilisateur est redirigé
      return false;
    }
  }
  return true;
}

///Retourne [false] si l'utilisateur n'a pas pu refresh son token
///sinon null si l'utilisateur a été redirigé vers le [SplashScreen]
///Retoune [true] si l'utilisateur a refresh le token
Future<bool?> refreshToken() async {
  User? user = Hive.box<User>("user").get("current");
  if (user != null) {
    ArtemisClient client = getClient(user.token.refresh);
    final response = await client.execute(
      RefreshTokenMutation(),
    );
    if (response.hasErrors) {
      debugPrint("Error while refreshing the token");
      _redirectUser(
        "Error while refreshing the token",
      );
      return null;
    } else {
      if (response.data?.refreshToken.error == null) {
        var token = response.data!.refreshToken.token!;
        Token newToken = Token(
          access: token.access,
          refresh: token.refresh,
        );
        user.token = newToken;
        Hive.box<User>("user").put("current", user);
      } else {
        _redirectUser(
          response.data?.refreshToken.error?.message,
        );
        return null;
      }
    }
    return true;
  }
  return false;
}

Future<void> _redirectUser(String? errorMessage) async {
  await Hive.box<User>("user").clear();
  ScaffoldMessenger.of(
    navigatorKey.currentContext!,
  ).showSnackBar(
    SnackBar(
      content: Text(
        errorMessage.toString(),
      ),
    ),
  );
  Navigator.pushNamedAndRemoveUntil(
    navigatorKey.currentContext!,
    SplashScreen.route,
    (route) => false,
  );
}

//Special enum just userd by these function
// ignore: prefer-match-file-name
enum ErrorType { expiredToken, unknown, noInternet, tokenRefreshed }

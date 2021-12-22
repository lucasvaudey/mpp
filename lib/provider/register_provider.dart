import 'package:artemis/artemis.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/graphql/graphql.dart';
import 'package:mpp/graphql/generated/graphql_api.graphql.dart';
import 'package:mpp/models/token.dart';
import 'package:mpp/models/user.dart';
import 'package:mpp/page/home_page.dart';
import 'package:mpp/page/splash_screen.dart';

class RegisterProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late BuildContext context;

  RegisterProvider(BuildContext ctx) {
    context = ctx;
  }

  ///Register the user
  ///
  ///@return true if the register success
  Future<void> register(String email, String pseudo, String mdp) async {
    ArtemisClient _client = getClient(null);
    final response = await _client.execute(
      RegisterMutation(
        variables:
            RegisterArguments(email: email, password: mdp, pseudo: pseudo),
      ),
    );
    if (response.data?.register.token != null &&
        response.data?.register.user?.id != null) {
      User newUser = User(
          id: response.data!.register.user!.id,
          pseudo: pseudo,
          email: email,
          token: Token(
            access: response.data!.register.token!.access,
            refresh: response.data!.register.token!.refresh,
          ));
      Hive.box<User>('user').put('current', newUser);
      Navigator.pushNamedAndRemoveUntil(
          context, SplashScreen.route, (route) => false);
    } else {
      print(response.data.toString());
      print(response.errors.toString());
    }
  }
}

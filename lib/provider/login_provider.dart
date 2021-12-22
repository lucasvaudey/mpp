import 'package:artemis/artemis.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/graphql/generated/graphql_api.graphql.dart';
import 'package:mpp/graphql/graphql.dart';
import 'package:mpp/models/token.dart';
import 'package:mpp/models/user.dart';
import 'package:mpp/page/splash_screen.dart';

class LoginProvider extends ChangeNotifier {
  late BuildContext context;
  LoginProvider(BuildContext _context) {
    context = _context;
  }
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> signIn() async {
    ArtemisClient _client = getClient(null);
    final response = await _client.execute(
      ConnectionMutation(
        variables: ConnectionArguments(
            emailOrUsername: emailController.text,
            password: passwordController.text),
      ),
    );
    if (response.hasErrors) {
      print(response);
      //TODO: show errors !
      return;
    }
    if (response.data != null) {
      if (response.data!.connect.token != null) {
        Token token = Token(
            access: response.data!.connect.token!.access,
            refresh: response.data!.connect.token!.access);
        User user = User(
            id: response.data!.connect.user!.id,
            pseudo: response.data!.connect.user!.pseudo,
            email: response.data!.connect.user!.email,
            token: token);
        Hive.box<User>("user").put("current", user);
        Navigator.of(context)
            .pushNamedAndRemoveUntil(SplashScreen.route, (route) => false);
      }
    }
  }
}

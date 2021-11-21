import 'dart:developer';

import 'package:artemis/artemis.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/models/token.dart';
import 'package:mpp/models/user.dart';
import 'package:mpp/page/home_page.dart';
import 'package:mpp/utils/graphql.dart';
import 'package:mpp/graphql_api.dart';

class LoginProvider extends ChangeNotifier {
  late BuildContext context;
  LoginProvider(BuildContext _context) {
    context = _context;
  }
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> signIn() async {
    ArtemisClient _client = gql.getClient(null);
    final response = await _client.execute(
      ConnectionMutation(
        variables: ConnectionArguments(
            emailOrUsername: emailController.text,
            password: passwordController.text),
      ),
    );
    print(response);
    if (response.hasErrors) {
      //TODO: show errors !
      return;
    }
    if (response.data != null) {
      if (response.data!.connect.token != null) {
        Token token = Token(
            access: response.data!.connect.token!.access,
            refresh: response.data!.connect.token!.access);
        User user = User(
            id: int.parse(response.data!.connect.user!.id),
            pseudo: response.data!.connect.user!.pseudo,
            email: response.data!.connect.user!.email,
            token: token);
        Hive.box<User>("user").put("current", user);
        Navigator.of(context)
            .pushNamedAndRemoveUntil(HomePage.route, (route) => false);
      }
    }
  }
}

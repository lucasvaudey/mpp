import 'package:artemis/artemis.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/graphql/graphql.dart';
import 'package:mpp/graphql/generated/graphql_api.graphql.dart';
import 'package:mpp/models/const/const_element.dart';
import 'package:mpp/models/user.dart';

class AdminProvider extends ChangeNotifier {
  User user = Hive.box<User>('user').get('current')!;
  List<ConstElement> constants = [];

  AdminProvider() {
    init();
  }

  Future<void> init() async {
    ArtemisClient _client = getClient(user.token.access);
    final response = await _client.execute(
      AllConstsQuery(
        variables: AllConstsArguments(numberInPage: 20, pageNumber: 0),
      ),
    );
    if (response.hasErrors) {
      //TODO: Show errors
      return;
    }
  }
}

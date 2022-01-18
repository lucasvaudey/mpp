import 'package:artemis/artemis.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/graphql/graphql.dart';
import 'package:mpp/graphql/generated/graphql_api.graphql.dart';
import 'package:mpp/models/const/const_element.dart';
import 'package:mpp/models/user.dart';

class AdminProvider extends ChangeNotifier {
  User user = Hive.box<User>('user').get('current')!;
  List<ConstElement> constants = [];
  bool _hasError = false;
  bool _loading = true;
  get loading => _loading;

  set loading(value) {
    _loading = value;
    notifyListeners();
  }

  get hasError => _hasError;

  set hasError(value) {
    _hasError = value;
    notifyListeners();
  }

  AdminProvider() {
    init();
  }

  Future<void> init() async {
    fetchConst();
  }

  fetchConst() async {
    ArtemisClient _client = getClient(user.token.access);
    loading = true;
    final response = await _client.execute(
      AllConstsQuery(
        variables: AllConstsArguments(numberInPage: 20, pageNumber: 0),
      ),
    );
    if (response.hasErrors) {
      hasError = true;
      loading = false;
      return;
    }
    if (response.data?.consts != null) {
      for (var constGql in response.data!.consts!) {
        ConstElement newConst = ConstElement.fromFrag(constGql);
        constants.add(newConst);
      }
    }
    loading = false;
  }
}

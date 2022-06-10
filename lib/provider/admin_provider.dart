import 'package:artemis/artemis.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:file_picker/file_picker.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/app.dart';
import 'package:mpp/graphql/error_handling.dart';
import 'package:mpp/graphql/graphql.dart';
import 'package:mpp/graphql/generated/graphql_api.graphql.dart';
import 'package:mpp/models/const/const_element.dart';
import 'package:mpp/models/user.dart';

class AdminProvider extends ChangeNotifier {
  User user = Hive.box<User>('user').get('current')!;
  List<ConstElement> constants = [];
  bool _hasError = false;
  bool _loading = true;
  XFile? file;
  MultipartFile? multipartFile;
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
    fetchConst();
  }

  fetchConst() async {
    ArtemisClient client = getClient(user.token.access);
    loading = true;
    final response = await client.execute(
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

  void pickImage() async {
    multipartFile?.finalize();
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'png'],
      allowMultiple: false,
    );
    if (result != null) {
      file = XFile.fromData(result.files.single.bytes!);
      if (kIsWeb) {
        multipartFile =
            MultipartFile.fromBytes('file', result.files.single.bytes!);
      }
      print(file);
    }
  }

  Future<void> addConst(ConstInput input) async {
    if (file != null) {
      if (!kIsWeb) {
        multipartFile = await MultipartFile.fromPath(
          'file',
          file!.path,
        );
      }

      User user = Hive.box<User>('user').get('current')!;
      GraphQLClient client = getUploadClient(user.token.access);
      AddConstArguments arg = AddConstArguments(
        constant: input,
        image: multipartFile!,
      );
      final response = await client.mutate(
        MutationOptions(
          document: AddConstMutation(variables: arg).document,
          variables: arg.toJson(),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      if (response.hasException) {
        ScaffoldMessenger.of(navigatorKey.currentContext!)
            .showSnackBar(const SnackBar(content: Text("Erreur !")));
      }
    }
  }

  Future<bool> removeConst(int id) async {
    ArtemisClient client = getClient(user.token.access);
    final res = await client.execute(
      RemoveConstMutation(
        variables: RemoveConstArguments(id: id),
      ),
    );
    if (res.hasErrors || res.data?.removeConst is! bool) {
      if (await errorProcessing(res, () async => await removeConst(id))) {
        return true;
      }
      return false;
    }
    constants.remove(constants.firstWhere((element) => element.id == id));
    notifyListeners();
    return res.data!.removeConst;
  }
}

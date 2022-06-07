import 'package:artemis/artemis.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
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

  Future<void> addLegumeConst() async {
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
        constant: ConstInput(
          legume: LegumeConstInput(
            advices: ["Bien !"],
            baseHeight: 50,
            baseWidth: 50,
            cultureDesc: "culture Desc ! Description !",
            defaultBgColor: '#FFA500',
            description: 'Descritption !',
            exposition: Exposition.soleil,
            image: 'https://google.com',
            label: 'Patate',
            plantMonth: [
              Month.aout,
              Month.juin,
            ],
            recolteDesc: 'Recolte desc !',
            recolteMonth: [
              Month.aout,
              Month.juin,
            ],
            semisMonth: [
              Month.aout,
              Month.juin,
            ],
            soilDesc: 'Soil Desck !',
          ),
        ),
        image: multipartFile!,
      );
      final response = await client.mutate(
        MutationOptions(
          document: AddConstMutation(variables: arg).document,
          variables: arg.toJson(),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      print(response);
    }
  }
}

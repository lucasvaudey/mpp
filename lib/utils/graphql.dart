import 'package:artemis/artemis.dart';
import 'package:dio/dio.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:mpp/const/string.dart';

class Graphql {
  ArtemisClient getClient(String? token) {
    Dio dio = Dio()
      ..interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
        if (token != null) {
          options.headers["Authorization"] = token;
        }
        handler.next(options);
      }, onError: (DioError error, handler) {
        if (error.response != null) {
          handler.resolve(error.response!);
        } else {
          handler.next(error);
        }
      }));
    DioLink dioLink = DioLink(kLocalUrl, client: dio);
    return ArtemisClient.fromLink(dioLink);
  }
}

final gql = Graphql();

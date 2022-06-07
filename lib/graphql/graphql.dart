import 'package:artemis/artemis.dart';
import 'package:dio/dio.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mpp/const/string.dart';

ArtemisClient getClient(String? token) {
  print(token);
  Dio dio = Dio()
    ..interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        if (token != null) {
          options.headers["Authorization"] = 'Bearer $token';
        }
        handler.next(options);
      },
      onError: (DioError error, handler) {
        if (error.response != null) {
          handler.resolve(error.response!);
        } else {
          handler.next(error);
        }
      },
    ));
  DioLink dioLink = DioLink(kLocalUrl, client: dio);
  return ArtemisClient.fromLink(dioLink);
}

///Un client just pour les [MultipartFile]
///
///Obligé d'utiliser [GraphQLClient], artemisClient supporte pas les upload peut-être un jour lorsque gql_dio_link sera à jour
GraphQLClient getUploadClient(String? token) {
  final HttpLink httpLink = HttpLink(
    kLocalUrl,
    defaultHeaders: {
      // "apollographql-client-name": appInfo.packageInfo.packageName,
      // "apollographql-client-version": appInfo.packageInfo.buildNumber
    },
  );
  final AuthLink authLink = AuthLink(
    getToken: () async => token == null ? '' : 'Bearer $token',
  );
  Link link = authLink.concat(httpLink);
  return GraphQLClient(
    link: link,
    cache: GraphQLCache(),
  );
}

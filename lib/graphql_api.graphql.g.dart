// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Connection$Mutation$ConnectionResponse$Token
    _$Connection$Mutation$ConnectionResponse$TokenFromJson(
        Map<String, dynamic> json) {
  return Connection$Mutation$ConnectionResponse$Token()
    ..access = json['access'] as String
    ..refresh = json['refresh'] as String;
}

Map<String, dynamic> _$Connection$Mutation$ConnectionResponse$TokenToJson(
        Connection$Mutation$ConnectionResponse$Token instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };

Connection$Mutation$ConnectionResponse$ErrorType
    _$Connection$Mutation$ConnectionResponse$ErrorTypeFromJson(
        Map<String, dynamic> json) {
  return Connection$Mutation$ConnectionResponse$ErrorType()
    ..label = json['label'] as String
    ..message = json['message'] as String;
}

Map<String, dynamic> _$Connection$Mutation$ConnectionResponse$ErrorTypeToJson(
        Connection$Mutation$ConnectionResponse$ErrorType instance) =>
    <String, dynamic>{
      'label': instance.label,
      'message': instance.message,
    };

Connection$Mutation$ConnectionResponse$User$Terrain
    _$Connection$Mutation$ConnectionResponse$User$TerrainFromJson(
        Map<String, dynamic> json) {
  return Connection$Mutation$ConnectionResponse$User$Terrain()
    ..id = json['id'] as String;
}

Map<String, dynamic>
    _$Connection$Mutation$ConnectionResponse$User$TerrainToJson(
            Connection$Mutation$ConnectionResponse$User$Terrain instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

Connection$Mutation$ConnectionResponse$User
    _$Connection$Mutation$ConnectionResponse$UserFromJson(
        Map<String, dynamic> json) {
  return Connection$Mutation$ConnectionResponse$User()
    ..id = json['id'] as String
    ..email = json['email'] as String
    ..pseudo = json['pseudo'] as String
    ..terrains = (json['terrains'] as List<dynamic>?)
        ?.map((e) =>
            Connection$Mutation$ConnectionResponse$User$Terrain.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Connection$Mutation$ConnectionResponse$UserToJson(
        Connection$Mutation$ConnectionResponse$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'pseudo': instance.pseudo,
      'terrains': instance.terrains?.map((e) => e.toJson()).toList(),
    };

Connection$Mutation$ConnectionResponse
    _$Connection$Mutation$ConnectionResponseFromJson(
        Map<String, dynamic> json) {
  return Connection$Mutation$ConnectionResponse()
    ..token = json['token'] == null
        ? null
        : Connection$Mutation$ConnectionResponse$Token.fromJson(
            json['token'] as Map<String, dynamic>)
    ..error = json['error'] == null
        ? null
        : Connection$Mutation$ConnectionResponse$ErrorType.fromJson(
            json['error'] as Map<String, dynamic>)
    ..user = json['user'] == null
        ? null
        : Connection$Mutation$ConnectionResponse$User.fromJson(
            json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Connection$Mutation$ConnectionResponseToJson(
        Connection$Mutation$ConnectionResponse instance) =>
    <String, dynamic>{
      'token': instance.token?.toJson(),
      'error': instance.error?.toJson(),
      'user': instance.user?.toJson(),
    };

Connection$Mutation _$Connection$MutationFromJson(Map<String, dynamic> json) {
  return Connection$Mutation()
    ..connect = Connection$Mutation$ConnectionResponse.fromJson(
        json['connect'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Connection$MutationToJson(
        Connection$Mutation instance) =>
    <String, dynamic>{
      'connect': instance.connect.toJson(),
    };

ConnectionArguments _$ConnectionArgumentsFromJson(Map<String, dynamic> json) {
  return ConnectionArguments(
    password: json['password'] as String,
    emailOrUsername: json['emailOrUsername'] as String,
  );
}

Map<String, dynamic> _$ConnectionArgumentsToJson(
        ConnectionArguments instance) =>
    <String, dynamic>{
      'password': instance.password,
      'emailOrUsername': instance.emailOrUsername,
    };

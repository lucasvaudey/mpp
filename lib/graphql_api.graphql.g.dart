// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Connection$Mutation$ConnectionResponse$Token
    _$Connection$Mutation$ConnectionResponse$TokenFromJson(
            Map<String, dynamic> json) =>
        Connection$Mutation$ConnectionResponse$Token()
          ..access = json['access'] as String
          ..refresh = json['refresh'] as String;

Map<String, dynamic> _$Connection$Mutation$ConnectionResponse$TokenToJson(
        Connection$Mutation$ConnectionResponse$Token instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };

Connection$Mutation$ConnectionResponse$ErrorType
    _$Connection$Mutation$ConnectionResponse$ErrorTypeFromJson(
            Map<String, dynamic> json) =>
        Connection$Mutation$ConnectionResponse$ErrorType()
          ..label = json['label'] as String
          ..message = json['message'] as String;

Map<String, dynamic> _$Connection$Mutation$ConnectionResponse$ErrorTypeToJson(
        Connection$Mutation$ConnectionResponse$ErrorType instance) =>
    <String, dynamic>{
      'label': instance.label,
      'message': instance.message,
    };

Connection$Mutation$ConnectionResponse
    _$Connection$Mutation$ConnectionResponseFromJson(
            Map<String, dynamic> json) =>
        Connection$Mutation$ConnectionResponse()
          ..token = json['token'] == null
              ? null
              : Connection$Mutation$ConnectionResponse$Token.fromJson(
                  json['token'] as Map<String, dynamic>)
          ..error = json['error'] == null
              ? null
              : Connection$Mutation$ConnectionResponse$ErrorType.fromJson(
                  json['error'] as Map<String, dynamic>);

Map<String, dynamic> _$Connection$Mutation$ConnectionResponseToJson(
        Connection$Mutation$ConnectionResponse instance) =>
    <String, dynamic>{
      'token': instance.token?.toJson(),
      'error': instance.error?.toJson(),
    };

Connection$Mutation _$Connection$MutationFromJson(Map<String, dynamic> json) =>
    Connection$Mutation()
      ..connect = Connection$Mutation$ConnectionResponse.fromJson(
          json['connect'] as Map<String, dynamic>);

Map<String, dynamic> _$Connection$MutationToJson(
        Connection$Mutation instance) =>
    <String, dynamic>{
      'connect': instance.connect.toJson(),
    };

ConnectionArguments _$ConnectionArgumentsFromJson(Map<String, dynamic> json) =>
    ConnectionArguments(
      password: json['password'] as String,
      emailOrUsername: json['emailOrUsername'] as String,
    );

Map<String, dynamic> _$ConnectionArgumentsToJson(
        ConnectionArguments instance) =>
    <String, dynamic>{
      'password': instance.password,
      'emailOrUsername': instance.emailOrUsername,
    };

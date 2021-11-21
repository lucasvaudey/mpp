// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Connection$Mutation$ConnectionResponse$Token extends JsonSerializable
    with EquatableMixin {
  Connection$Mutation$ConnectionResponse$Token();

  factory Connection$Mutation$ConnectionResponse$Token.fromJson(
          Map<String, dynamic> json) =>
      _$Connection$Mutation$ConnectionResponse$TokenFromJson(json);

  late String access;

  late String refresh;

  @override
  List<Object?> get props => [access, refresh];
  @override
  Map<String, dynamic> toJson() =>
      _$Connection$Mutation$ConnectionResponse$TokenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Connection$Mutation$ConnectionResponse$ErrorType extends JsonSerializable
    with EquatableMixin {
  Connection$Mutation$ConnectionResponse$ErrorType();

  factory Connection$Mutation$ConnectionResponse$ErrorType.fromJson(
          Map<String, dynamic> json) =>
      _$Connection$Mutation$ConnectionResponse$ErrorTypeFromJson(json);

  late String label;

  late String message;

  @override
  List<Object?> get props => [label, message];
  @override
  Map<String, dynamic> toJson() =>
      _$Connection$Mutation$ConnectionResponse$ErrorTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Connection$Mutation$ConnectionResponse$User$Terrain
    extends JsonSerializable with EquatableMixin {
  Connection$Mutation$ConnectionResponse$User$Terrain();

  factory Connection$Mutation$ConnectionResponse$User$Terrain.fromJson(
          Map<String, dynamic> json) =>
      _$Connection$Mutation$ConnectionResponse$User$TerrainFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$Connection$Mutation$ConnectionResponse$User$TerrainToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Connection$Mutation$ConnectionResponse$User extends JsonSerializable
    with EquatableMixin {
  Connection$Mutation$ConnectionResponse$User();

  factory Connection$Mutation$ConnectionResponse$User.fromJson(
          Map<String, dynamic> json) =>
      _$Connection$Mutation$ConnectionResponse$UserFromJson(json);

  late String id;

  late String email;

  late String pseudo;

  List<Connection$Mutation$ConnectionResponse$User$Terrain>? terrains;

  @override
  List<Object?> get props => [id, email, pseudo, terrains];
  @override
  Map<String, dynamic> toJson() =>
      _$Connection$Mutation$ConnectionResponse$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Connection$Mutation$ConnectionResponse extends JsonSerializable
    with EquatableMixin {
  Connection$Mutation$ConnectionResponse();

  factory Connection$Mutation$ConnectionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$Connection$Mutation$ConnectionResponseFromJson(json);

  Connection$Mutation$ConnectionResponse$Token? token;

  Connection$Mutation$ConnectionResponse$ErrorType? error;

  Connection$Mutation$ConnectionResponse$User? user;

  @override
  List<Object?> get props => [token, error, user];
  @override
  Map<String, dynamic> toJson() =>
      _$Connection$Mutation$ConnectionResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Connection$Mutation extends JsonSerializable with EquatableMixin {
  Connection$Mutation();

  factory Connection$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Connection$MutationFromJson(json);

  late Connection$Mutation$ConnectionResponse connect;

  @override
  List<Object?> get props => [connect];
  @override
  Map<String, dynamic> toJson() => _$Connection$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConnectionArguments extends JsonSerializable with EquatableMixin {
  ConnectionArguments({required this.password, required this.emailOrUsername});

  @override
  factory ConnectionArguments.fromJson(Map<String, dynamic> json) =>
      _$ConnectionArgumentsFromJson(json);

  late String password;

  late String emailOrUsername;

  @override
  List<Object?> get props => [password, emailOrUsername];
  @override
  Map<String, dynamic> toJson() => _$ConnectionArgumentsToJson(this);
}

final CONNECTION_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'Connection'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'password')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'emailOrUsername')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'connect'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'password'),
                  value: VariableNode(name: NameNode(value: 'password'))),
              ArgumentNode(
                  name: NameNode(value: 'emailOrUsername'),
                  value: VariableNode(name: NameNode(value: 'emailOrUsername')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'token'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'access'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'refresh'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'error'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'label'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'message'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'email'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'pseudo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'terrains'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class ConnectionMutation
    extends GraphQLQuery<Connection$Mutation, ConnectionArguments> {
  ConnectionMutation({required this.variables});

  @override
  final DocumentNode document = CONNECTION_MUTATION_DOCUMENT;

  @override
  final String operationName = 'Connection';

  @override
  final ConnectionArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Connection$Mutation parse(Map<String, dynamic> json) =>
      Connection$Mutation.fromJson(json);
}

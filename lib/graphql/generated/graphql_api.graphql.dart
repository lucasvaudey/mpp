// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:mpp/graphql/coercers.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Connection$Mutation$Connect$Token extends JsonSerializable
    with EquatableMixin {
  Connection$Mutation$Connect$Token();

  factory Connection$Mutation$Connect$Token.fromJson(
          Map<String, dynamic> json) =>
      _$Connection$Mutation$Connect$TokenFromJson(json);

  late String access;

  late String refresh;

  @override
  List<Object?> get props => [access, refresh];
  @override
  Map<String, dynamic> toJson() =>
      _$Connection$Mutation$Connect$TokenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Connection$Mutation$Connect$Error extends JsonSerializable
    with EquatableMixin {
  Connection$Mutation$Connect$Error();

  factory Connection$Mutation$Connect$Error.fromJson(
          Map<String, dynamic> json) =>
      _$Connection$Mutation$Connect$ErrorFromJson(json);

  late String label;

  late String message;

  @override
  List<Object?> get props => [label, message];
  @override
  Map<String, dynamic> toJson() =>
      _$Connection$Mutation$Connect$ErrorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Connection$Mutation$Connect$User$Terrains extends JsonSerializable
    with EquatableMixin {
  Connection$Mutation$Connect$User$Terrains();

  factory Connection$Mutation$Connect$User$Terrains.fromJson(
          Map<String, dynamic> json) =>
      _$Connection$Mutation$Connect$User$TerrainsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$Connection$Mutation$Connect$User$TerrainsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Connection$Mutation$Connect$User extends JsonSerializable
    with EquatableMixin {
  Connection$Mutation$Connect$User();

  factory Connection$Mutation$Connect$User.fromJson(
          Map<String, dynamic> json) =>
      _$Connection$Mutation$Connect$UserFromJson(json);

  late String id;

  late String email;

  late String pseudo;

  List<Connection$Mutation$Connect$User$Terrains>? terrains;

  @override
  List<Object?> get props => [id, email, pseudo, terrains];
  @override
  Map<String, dynamic> toJson() =>
      _$Connection$Mutation$Connect$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Connection$Mutation$Connect extends JsonSerializable with EquatableMixin {
  Connection$Mutation$Connect();

  factory Connection$Mutation$Connect.fromJson(Map<String, dynamic> json) =>
      _$Connection$Mutation$ConnectFromJson(json);

  Connection$Mutation$Connect$Token? token;

  Connection$Mutation$Connect$Error? error;

  Connection$Mutation$Connect$User? user;

  @override
  List<Object?> get props => [token, error, user];
  @override
  Map<String, dynamic> toJson() => _$Connection$Mutation$ConnectToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Connection$Mutation extends JsonSerializable with EquatableMixin {
  Connection$Mutation();

  factory Connection$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Connection$MutationFromJson(json);

  late Connection$Mutation$Connect connect;

  @override
  List<Object?> get props => [connect];
  @override
  Map<String, dynamic> toJson() => _$Connection$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$Me$User$Terrains$Legumes$Notifs extends JsonSerializable
    with EquatableMixin {
  Me$Query$Me$User$Terrains$Legumes$Notifs();

  factory Me$Query$Me$User$Terrains$Legumes$Notifs.fromJson(
          Map<String, dynamic> json) =>
      _$Me$Query$Me$User$Terrains$Legumes$NotifsFromJson(json);

  late String id;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime createdAt;

  late bool done;

  @JsonKey(
      fromJson: fromGraphQLListNullableDateTimeToDartListNullableDateTime,
      toJson: fromDartListNullableDateTimeToGraphQLListNullableDateTime)
  List<DateTime>? notifRappel;

  @override
  List<Object?> get props => [id, createdAt, done, notifRappel];
  @override
  Map<String, dynamic> toJson() =>
      _$Me$Query$Me$User$Terrains$Legumes$NotifsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$Me$User$Terrains$Legumes extends JsonSerializable
    with EquatableMixin {
  Me$Query$Me$User$Terrains$Legumes();

  factory Me$Query$Me$User$Terrains$Legumes.fromJson(
          Map<String, dynamic> json) =>
      _$Me$Query$Me$User$Terrains$LegumesFromJson(json);

  late String bgColor;

  String? subName;

  late String label;

  double? posY;

  double? posX;

  late String id;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime recolteDate;

  List<Me$Query$Me$User$Terrains$Legumes$Notifs>? notifs;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? plantDate;

  late double height;

  late double width;

  String? image;

  @override
  List<Object?> get props => [
        bgColor,
        subName,
        label,
        posY,
        posX,
        id,
        recolteDate,
        notifs,
        plantDate,
        height,
        width,
        image
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$Me$Query$Me$User$Terrains$LegumesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$Me$User$Terrains extends JsonSerializable with EquatableMixin {
  Me$Query$Me$User$Terrains();

  factory Me$Query$Me$User$Terrains.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$Me$User$TerrainsFromJson(json);

  late String id;

  late double height;

  late String bgColor;

  late double width;

  List<Me$Query$Me$User$Terrains$Legumes>? legumes;

  @override
  List<Object?> get props => [id, height, bgColor, width, legumes];
  @override
  Map<String, dynamic> toJson() => _$Me$Query$Me$User$TerrainsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$Me$User$Semis$Elements extends JsonSerializable
    with EquatableMixin {
  Me$Query$Me$User$Semis$Elements();

  factory Me$Query$Me$User$Semis$Elements.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$Me$User$Semis$ElementsFromJson(json);

  late String id;

  late String label;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime recolteDate;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime plantDate;

  late int posColumn;

  late int posRow;

  late String image;

  @override
  List<Object?> get props =>
      [id, label, recolteDate, plantDate, posColumn, posRow, image];
  @override
  Map<String, dynamic> toJson() =>
      _$Me$Query$Me$User$Semis$ElementsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$Me$User$Semis extends JsonSerializable with EquatableMixin {
  Me$Query$Me$User$Semis();

  factory Me$Query$Me$User$Semis.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$Me$User$SemisFromJson(json);

  late String id;

  late String label;

  late int column;

  late int row;

  late List<Me$Query$Me$User$Semis$Elements> elements;

  @override
  List<Object?> get props => [id, label, column, row, elements];
  @override
  Map<String, dynamic> toJson() => _$Me$Query$Me$User$SemisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$Me$User$Pot extends JsonSerializable with EquatableMixin {
  Me$Query$Me$User$Pot();

  factory Me$Query$Me$User$Pot.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$Me$User$PotFromJson(json);

  late int id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() => _$Me$Query$Me$User$PotToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$Me$User extends JsonSerializable with EquatableMixin {
  Me$Query$Me$User();

  factory Me$Query$Me$User.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$Me$UserFromJson(json);

  late String id;

  late String email;

  late String pseudo;

  late bool premium;

  late bool admin;

  List<Me$Query$Me$User$Terrains>? terrains;

  List<Me$Query$Me$User$Semis>? semis;

  List<Me$Query$Me$User$Pot>? pot;

  @override
  List<Object?> get props =>
      [id, email, pseudo, premium, admin, terrains, semis, pot];
  @override
  Map<String, dynamic> toJson() => _$Me$Query$Me$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$Me extends JsonSerializable with EquatableMixin {
  Me$Query$Me();

  factory Me$Query$Me.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$MeFromJson(json);

  Me$Query$Me$User? user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() => _$Me$Query$MeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query extends JsonSerializable with EquatableMixin {
  Me$Query();

  factory Me$Query.fromJson(Map<String, dynamic> json) =>
      _$Me$QueryFromJson(json);

  late Me$Query$Me me;

  @override
  List<Object?> get props => [me];
  @override
  Map<String, dynamic> toJson() => _$Me$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Register$Mutation$Register$Token extends JsonSerializable
    with EquatableMixin {
  Register$Mutation$Register$Token();

  factory Register$Mutation$Register$Token.fromJson(
          Map<String, dynamic> json) =>
      _$Register$Mutation$Register$TokenFromJson(json);

  late String access;

  late String refresh;

  @override
  List<Object?> get props => [access, refresh];
  @override
  Map<String, dynamic> toJson() =>
      _$Register$Mutation$Register$TokenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Register$Mutation$Register$Error extends JsonSerializable
    with EquatableMixin {
  Register$Mutation$Register$Error();

  factory Register$Mutation$Register$Error.fromJson(
          Map<String, dynamic> json) =>
      _$Register$Mutation$Register$ErrorFromJson(json);

  late String label;

  late String message;

  @override
  List<Object?> get props => [label, message];
  @override
  Map<String, dynamic> toJson() =>
      _$Register$Mutation$Register$ErrorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Register$Mutation$Register$User extends JsonSerializable
    with EquatableMixin {
  Register$Mutation$Register$User();

  factory Register$Mutation$Register$User.fromJson(Map<String, dynamic> json) =>
      _$Register$Mutation$Register$UserFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$Register$Mutation$Register$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Register$Mutation$Register extends JsonSerializable with EquatableMixin {
  Register$Mutation$Register();

  factory Register$Mutation$Register.fromJson(Map<String, dynamic> json) =>
      _$Register$Mutation$RegisterFromJson(json);

  Register$Mutation$Register$Token? token;

  Register$Mutation$Register$Error? error;

  Register$Mutation$Register$User? user;

  @override
  List<Object?> get props => [token, error, user];
  @override
  Map<String, dynamic> toJson() => _$Register$Mutation$RegisterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Register$Mutation extends JsonSerializable with EquatableMixin {
  Register$Mutation();

  factory Register$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Register$MutationFromJson(json);

  late Register$Mutation$Register register;

  @override
  List<Object?> get props => [register];
  @override
  Map<String, dynamic> toJson() => _$Register$MutationToJson(this);
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

final ME_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Me'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'me'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                        name: NameNode(value: 'premium'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'admin'),
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
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'height'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'bgColor'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'width'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'legumes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'bgColor'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'subName'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'label'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'posY'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'posX'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'id'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'recolteDate'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'notifs'),
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
                                          name: NameNode(value: 'createdAt'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'done'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'notifRappel'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'plantDate'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'height'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'width'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'image'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'semis'),
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
                              name: NameNode(value: 'label'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'column'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'row'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'elements'),
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
                                    name: NameNode(value: 'label'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'recolteDate'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'plantDate'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'posColumn'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'posRow'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'image'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'pot'),
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
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class MeQuery extends GraphQLQuery<Me$Query, JsonSerializable> {
  MeQuery();

  @override
  final DocumentNode document = ME_QUERY_DOCUMENT;

  @override
  final String operationName = 'Me';

  @override
  List<Object?> get props => [document, operationName];
  @override
  Me$Query parse(Map<String, dynamic> json) => Me$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class RegisterArguments extends JsonSerializable with EquatableMixin {
  RegisterArguments(
      {required this.password, required this.pseudo, required this.email});

  @override
  factory RegisterArguments.fromJson(Map<String, dynamic> json) =>
      _$RegisterArgumentsFromJson(json);

  late String password;

  late String pseudo;

  late String email;

  @override
  List<Object?> get props => [password, pseudo, email];
  @override
  Map<String, dynamic> toJson() => _$RegisterArgumentsToJson(this);
}

final REGISTER_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'Register'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'password')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'pseudo')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'email')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'register'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'password'),
                  value: VariableNode(name: NameNode(value: 'password'))),
              ArgumentNode(
                  name: NameNode(value: 'pseudo'),
                  value: VariableNode(name: NameNode(value: 'pseudo'))),
              ArgumentNode(
                  name: NameNode(value: 'email'),
                  value: VariableNode(name: NameNode(value: 'email')))
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
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class RegisterMutation
    extends GraphQLQuery<Register$Mutation, RegisterArguments> {
  RegisterMutation({required this.variables});

  @override
  final DocumentNode document = REGISTER_MUTATION_DOCUMENT;

  @override
  final String operationName = 'Register';

  @override
  final RegisterArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Register$Mutation parse(Map<String, dynamic> json) =>
      Register$Mutation.fromJson(json);
}

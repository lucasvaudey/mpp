// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:mpp/graphql/coercers.dart';
import 'package:http/http.dart';
part 'graphql_api.graphql.g.dart';

mixin AromatCFragMixin {
  @JsonKey(fromJson: fromGraphQLIdToDartint, toJson: fromDartintToGraphQLId)
  late int id;
  late String label;
  late String defaultBgColor;
  late double baseHeight;
  late double baseWidth;
  late String image;
  late String description;
  @JsonKey(unknownEnumValue: Exposition.artemisUnknown)
  late Exposition exposition;
}
mixin LegumeCFragMixin {
  @JsonKey(fromJson: fromGraphQLIdToDartint, toJson: fromDartintToGraphQLId)
  late int id;
  late String label;
  late String defaultBgColor;
  late double baseHeight;
  late double baseWidth;
  late String image;
  late String description;
  @JsonKey(unknownEnumValue: Exposition.artemisUnknown)
  late Exposition exposition;
}
mixin ArbreCFragMixin {
  @JsonKey(fromJson: fromGraphQLIdToDartint, toJson: fromDartintToGraphQLId)
  late int id;
  late double baseHeight;
  late String label;
  late String defaultBgColor;
  late double baseWidth;
  late String description;
  late String image;
  List<String>? advices;
  @JsonKey(unknownEnumValue: Exposition.artemisUnknown)
  late Exposition exposition;
  @JsonKey(unknownEnumValue: Month.artemisUnknown)
  List<Month>? plantMonth;
  @JsonKey(unknownEnumValue: Month.artemisUnknown)
  List<Month>? recolteMonth;
  @JsonKey(unknownEnumValue: Month.artemisUnknown)
  List<Month>? semisMonth;
  late String climatDesc;
  late String tailleDesc;
  late String recolteDesc;
  late List<int> tailleMonth;
  @JsonKey(unknownEnumValue: Rusticity.artemisUnknown)
  late Rusticity rusticity;
  List<ArbreCFragMixin$Varieties>? varieties;
  List<ArbreCFragMixin$Sickness>? sickness;
}
mixin UserInfoMixin {
  @JsonKey(fromJson: fromGraphQLIdToDartint, toJson: fromDartintToGraphQLId)
  late int id;
  late String email;
  late String pseudo;
  late bool premium;
  late bool admin;
  List<UserInfoMixin$Terrains>? terrains;
  List<UserInfoMixin$Semis>? semis;
}

@JsonSerializable(explicitToJson: true)
class RemoveConst$Mutation extends JsonSerializable with EquatableMixin {
  RemoveConst$Mutation();

  factory RemoveConst$Mutation.fromJson(Map<String, dynamic> json) =>
      _$RemoveConst$MutationFromJson(json);

  late bool removeConst;

  @override
  List<Object?> get props => [removeConst];
  @override
  Map<String, dynamic> toJson() => _$RemoveConst$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddConst$Mutation extends JsonSerializable with EquatableMixin {
  AddConst$Mutation();

  factory AddConst$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AddConst$MutationFromJson(json);

  late bool addConst;

  @override
  List<Object?> get props => [addConst];
  @override
  Map<String, dynamic> toJson() => _$AddConst$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConstInput extends JsonSerializable with EquatableMixin {
  ConstInput({this.legume, this.arbre, this.aromat});

  factory ConstInput.fromJson(Map<String, dynamic> json) =>
      _$ConstInputFromJson(json);

  LegumeConstInput? legume;

  ArbreConstInput? arbre;

  AromatConstInput? aromat;

  @override
  List<Object?> get props => [legume, arbre, aromat];
  @override
  Map<String, dynamic> toJson() => _$ConstInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LegumeConstInput extends JsonSerializable with EquatableMixin {
  LegumeConstInput(
      {required this.label,
      required this.defaultBgColor,
      required this.baseHeight,
      required this.baseWidth,
      required this.image,
      required this.description,
      required this.cultureDesc,
      required this.advices,
      required this.plantMonth,
      required this.recolteDesc,
      required this.recolteMonth,
      required this.semisMonth,
      required this.soilDesc,
      required this.exposition});

  factory LegumeConstInput.fromJson(Map<String, dynamic> json) =>
      _$LegumeConstInputFromJson(json);

  late String label;

  late String defaultBgColor;

  late double baseHeight;

  late double baseWidth;

  late String image;

  late String description;

  late String cultureDesc;

  late List<String> advices;

  @JsonKey(unknownEnumValue: Month.artemisUnknown)
  late List<Month> plantMonth;

  late String recolteDesc;

  @JsonKey(unknownEnumValue: Month.artemisUnknown)
  late List<Month> recolteMonth;

  @JsonKey(unknownEnumValue: Month.artemisUnknown)
  late List<Month> semisMonth;

  late String soilDesc;

  @JsonKey(unknownEnumValue: Exposition.artemisUnknown)
  late Exposition exposition;

  @override
  List<Object?> get props => [
        label,
        defaultBgColor,
        baseHeight,
        baseWidth,
        image,
        description,
        cultureDesc,
        advices,
        plantMonth,
        recolteDesc,
        recolteMonth,
        semisMonth,
        soilDesc,
        exposition
      ];
  @override
  Map<String, dynamic> toJson() => _$LegumeConstInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ArbreConstInput extends JsonSerializable with EquatableMixin {
  ArbreConstInput(
      {required this.label,
      required this.defaultBgColor,
      required this.baseHeight,
      required this.baseWidth,
      required this.image,
      required this.description,
      required this.climatDesc,
      required this.tailleDesc,
      required this.recolteDesc,
      required this.tailleMonth,
      required this.rusticity,
      required this.soilDesc,
      this.advices,
      required this.exposition,
      required this.plantMonth,
      required this.recolteMonth,
      required this.semisMonth});

  factory ArbreConstInput.fromJson(Map<String, dynamic> json) =>
      _$ArbreConstInputFromJson(json);

  late String label;

  late String defaultBgColor;

  late double baseHeight;

  late double baseWidth;

  late String image;

  late String description;

  late String climatDesc;

  late String tailleDesc;

  late String recolteDesc;

  late List<int> tailleMonth;

  @JsonKey(unknownEnumValue: Rusticity.artemisUnknown)
  late Rusticity rusticity;

  late String soilDesc;

  List<String>? advices;

  @JsonKey(unknownEnumValue: Exposition.artemisUnknown)
  late Exposition exposition;

  @JsonKey(unknownEnumValue: Month.artemisUnknown)
  late List<Month> plantMonth;

  @JsonKey(unknownEnumValue: Month.artemisUnknown)
  late List<Month> recolteMonth;

  @JsonKey(unknownEnumValue: Month.artemisUnknown)
  late List<Month> semisMonth;

  @override
  List<Object?> get props => [
        label,
        defaultBgColor,
        baseHeight,
        baseWidth,
        image,
        description,
        climatDesc,
        tailleDesc,
        recolteDesc,
        tailleMonth,
        rusticity,
        soilDesc,
        advices,
        exposition,
        plantMonth,
        recolteMonth,
        semisMonth
      ];
  @override
  Map<String, dynamic> toJson() => _$ArbreConstInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AromatConstInput extends JsonSerializable with EquatableMixin {
  AromatConstInput(
      {required this.label,
      required this.defaultBgColor,
      required this.baseHeight,
      required this.baseWidth,
      required this.image,
      required this.description,
      required this.soilDesc,
      this.advices,
      required this.exposition,
      required this.plantMonth,
      required this.recolteMonth,
      required this.semisMonth});

  factory AromatConstInput.fromJson(Map<String, dynamic> json) =>
      _$AromatConstInputFromJson(json);

  late String label;

  late String defaultBgColor;

  late double baseHeight;

  late double baseWidth;

  late String image;

  late String description;

  late String soilDesc;

  List<String>? advices;

  @JsonKey(unknownEnumValue: Exposition.artemisUnknown)
  late Exposition exposition;

  @JsonKey(unknownEnumValue: Month.artemisUnknown)
  late List<Month> plantMonth;

  @JsonKey(unknownEnumValue: Month.artemisUnknown)
  late List<Month> recolteMonth;

  @JsonKey(unknownEnumValue: Month.artemisUnknown)
  late List<Month> semisMonth;

  @override
  List<Object?> get props => [
        label,
        defaultBgColor,
        baseHeight,
        baseWidth,
        image,
        description,
        soilDesc,
        advices,
        exposition,
        plantMonth,
        recolteMonth,
        semisMonth
      ];
  @override
  Map<String, dynamic> toJson() => _$AromatConstInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RefreshToken$Mutation$RefreshToken$Token extends JsonSerializable
    with EquatableMixin {
  RefreshToken$Mutation$RefreshToken$Token();

  factory RefreshToken$Mutation$RefreshToken$Token.fromJson(
          Map<String, dynamic> json) =>
      _$RefreshToken$Mutation$RefreshToken$TokenFromJson(json);

  late String refresh;

  late String access;

  @override
  List<Object?> get props => [refresh, access];
  @override
  Map<String, dynamic> toJson() =>
      _$RefreshToken$Mutation$RefreshToken$TokenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RefreshToken$Mutation$RefreshToken$Error extends JsonSerializable
    with EquatableMixin {
  RefreshToken$Mutation$RefreshToken$Error();

  factory RefreshToken$Mutation$RefreshToken$Error.fromJson(
          Map<String, dynamic> json) =>
      _$RefreshToken$Mutation$RefreshToken$ErrorFromJson(json);

  late String label;

  late String message;

  @override
  List<Object?> get props => [label, message];
  @override
  Map<String, dynamic> toJson() =>
      _$RefreshToken$Mutation$RefreshToken$ErrorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RefreshToken$Mutation$RefreshToken extends JsonSerializable
    with EquatableMixin {
  RefreshToken$Mutation$RefreshToken();

  factory RefreshToken$Mutation$RefreshToken.fromJson(
          Map<String, dynamic> json) =>
      _$RefreshToken$Mutation$RefreshTokenFromJson(json);

  RefreshToken$Mutation$RefreshToken$Token? token;

  RefreshToken$Mutation$RefreshToken$Error? error;

  @override
  List<Object?> get props => [token, error];
  @override
  Map<String, dynamic> toJson() =>
      _$RefreshToken$Mutation$RefreshTokenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RefreshToken$Mutation extends JsonSerializable with EquatableMixin {
  RefreshToken$Mutation();

  factory RefreshToken$Mutation.fromJson(Map<String, dynamic> json) =>
      _$RefreshToken$MutationFromJson(json);

  late RefreshToken$Mutation$RefreshToken refreshToken;

  @override
  List<Object?> get props => [refreshToken];
  @override
  Map<String, dynamic> toJson() => _$RefreshToken$MutationToJson(this);
}

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

  @JsonKey(fromJson: fromGraphQLIdToDartint, toJson: fromDartintToGraphQLId)
  late int id;

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

  @JsonKey(fromJson: fromGraphQLIdToDartint, toJson: fromDartintToGraphQLId)
  late int id;

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

  @JsonKey(fromJson: fromGraphQLIdToDartint, toJson: fromDartintToGraphQLId)
  late int id;

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
class AllAromat$Query$Consts$AromatConst extends AllAromat$Query$Consts
    with EquatableMixin, AromatCFragMixin {
  AllAromat$Query$Consts$AromatConst();

  factory AllAromat$Query$Consts$AromatConst.fromJson(
          Map<String, dynamic> json) =>
      _$AllAromat$Query$Consts$AromatConstFromJson(json);

  @override
  List<Object?> get props => [
        id,
        label,
        defaultBgColor,
        baseHeight,
        baseWidth,
        image,
        description,
        exposition
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$AllAromat$Query$Consts$AromatConstToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllAromat$Query$Consts extends JsonSerializable with EquatableMixin {
  AllAromat$Query$Consts();

  factory AllAromat$Query$Consts.fromJson(Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'AromatConst':
        return AllAromat$Query$Consts$AromatConst.fromJson(json);
      default:
    }
    return _$AllAromat$Query$ConstsFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'AromatConst':
        return (this as AllAromat$Query$Consts$AromatConst).toJson();
      default:
    }
    return _$AllAromat$Query$ConstsToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class AllAromat$Query extends JsonSerializable with EquatableMixin {
  AllAromat$Query();

  factory AllAromat$Query.fromJson(Map<String, dynamic> json) =>
      _$AllAromat$QueryFromJson(json);

  List<AllAromat$Query$Consts>? consts;

  @override
  List<Object?> get props => [consts];
  @override
  Map<String, dynamic> toJson() => _$AllAromat$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllLegumes$Query$Consts$LegumeConst extends AllLegumes$Query$Consts
    with EquatableMixin, LegumeCFragMixin {
  AllLegumes$Query$Consts$LegumeConst();

  factory AllLegumes$Query$Consts$LegumeConst.fromJson(
          Map<String, dynamic> json) =>
      _$AllLegumes$Query$Consts$LegumeConstFromJson(json);

  @override
  List<Object?> get props => [
        id,
        label,
        defaultBgColor,
        baseHeight,
        baseWidth,
        image,
        description,
        exposition
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$AllLegumes$Query$Consts$LegumeConstToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllLegumes$Query$Consts extends JsonSerializable with EquatableMixin {
  AllLegumes$Query$Consts();

  factory AllLegumes$Query$Consts.fromJson(Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'LegumeConst':
        return AllLegumes$Query$Consts$LegumeConst.fromJson(json);
      default:
    }
    return _$AllLegumes$Query$ConstsFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'LegumeConst':
        return (this as AllLegumes$Query$Consts$LegumeConst).toJson();
      default:
    }
    return _$AllLegumes$Query$ConstsToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class AllLegumes$Query extends JsonSerializable with EquatableMixin {
  AllLegumes$Query();

  factory AllLegumes$Query.fromJson(Map<String, dynamic> json) =>
      _$AllLegumes$QueryFromJson(json);

  List<AllLegumes$Query$Consts>? consts;

  @override
  List<Object?> get props => [consts];
  @override
  Map<String, dynamic> toJson() => _$AllLegumes$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Kw$Const$Query$Kw$const$LegumeConst extends Kw$Const$Query$Kw$const
    with EquatableMixin {
  Kw$Const$Query$Kw$const$LegumeConst();

  factory Kw$Const$Query$Kw$const$LegumeConst.fromJson(
          Map<String, dynamic> json) =>
      _$Kw$Const$Query$Kw$const$LegumeConstFromJson(json);

  late String description;

  late String label;

  late String defaultBgColor;

  late double baseHeight;

  late double baseWidth;

  late String image;

  @JsonKey(fromJson: fromGraphQLIdToDartint, toJson: fromDartintToGraphQLId)
  late int id;

  @override
  List<Object?> get props =>
      [description, label, defaultBgColor, baseHeight, baseWidth, image, id];
  @override
  Map<String, dynamic> toJson() =>
      _$Kw$Const$Query$Kw$const$LegumeConstToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Kw$Const$Query$Kw$const$ArbreConst extends Kw$Const$Query$Kw$const
    with EquatableMixin {
  Kw$Const$Query$Kw$const$ArbreConst();

  factory Kw$Const$Query$Kw$const$ArbreConst.fromJson(
          Map<String, dynamic> json) =>
      _$Kw$Const$Query$Kw$const$ArbreConstFromJson(json);

  @JsonKey(fromJson: fromGraphQLIdToDartint, toJson: fromDartintToGraphQLId)
  late int id;

  late String label;

  late String defaultBgColor;

  late double baseHeight;

  late double baseWidth;

  late String image;

  late String description;

  @override
  List<Object?> get props =>
      [id, label, defaultBgColor, baseHeight, baseWidth, image, description];
  @override
  Map<String, dynamic> toJson() =>
      _$Kw$Const$Query$Kw$const$ArbreConstToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Kw$Const$Query$Kw$const$AromatConst extends Kw$Const$Query$Kw$const
    with EquatableMixin {
  Kw$Const$Query$Kw$const$AromatConst();

  factory Kw$Const$Query$Kw$const$AromatConst.fromJson(
          Map<String, dynamic> json) =>
      _$Kw$Const$Query$Kw$const$AromatConstFromJson(json);

  late String label;

  @JsonKey(fromJson: fromGraphQLIdToDartint, toJson: fromDartintToGraphQLId)
  late int id;

  late String defaultBgColor;

  late double baseHeight;

  late double baseWidth;

  late String image;

  late String description;

  @override
  List<Object?> get props =>
      [label, id, defaultBgColor, baseHeight, baseWidth, image, description];
  @override
  Map<String, dynamic> toJson() =>
      _$Kw$Const$Query$Kw$const$AromatConstToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Kw$Const$Query$Kw$const extends JsonSerializable with EquatableMixin {
  Kw$Const$Query$Kw$const();

  factory Kw$Const$Query$Kw$const.fromJson(Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'LegumeConst':
        return Kw$Const$Query$Kw$const$LegumeConst.fromJson(json);
      case r'ArbreConst':
        return Kw$Const$Query$Kw$const$ArbreConst.fromJson(json);
      case r'AromatConst':
        return Kw$Const$Query$Kw$const$AromatConst.fromJson(json);
      default:
    }
    return _$Kw$Const$Query$Kw$constFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'LegumeConst':
        return (this as Kw$Const$Query$Kw$const$LegumeConst).toJson();
      case r'ArbreConst':
        return (this as Kw$Const$Query$Kw$const$ArbreConst).toJson();
      case r'AromatConst':
        return (this as Kw$Const$Query$Kw$const$AromatConst).toJson();
      default:
    }
    return _$Kw$Const$Query$Kw$constToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class Kw$Const$Query extends JsonSerializable with EquatableMixin {
  Kw$Const$Query();

  factory Kw$Const$Query.fromJson(Map<String, dynamic> json) =>
      _$Kw$Const$QueryFromJson(json);

  @JsonKey(name: 'const')
  Kw$Const$Query$Kw$const? kw$const;

  @override
  List<Object?> get props => [kw$const];
  @override
  Map<String, dynamic> toJson() => _$Kw$Const$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllArbres$Query$Consts$ArbreConst extends AllArbres$Query$Consts
    with EquatableMixin, ArbreCFragMixin {
  AllArbres$Query$Consts$ArbreConst();

  factory AllArbres$Query$Consts$ArbreConst.fromJson(
          Map<String, dynamic> json) =>
      _$AllArbres$Query$Consts$ArbreConstFromJson(json);

  @override
  List<Object?> get props => [
        id,
        baseHeight,
        label,
        defaultBgColor,
        baseWidth,
        description,
        image,
        advices,
        exposition,
        plantMonth,
        recolteMonth,
        semisMonth,
        climatDesc,
        tailleDesc,
        recolteDesc,
        tailleMonth,
        rusticity,
        varieties,
        sickness
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$AllArbres$Query$Consts$ArbreConstToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllArbres$Query$Consts extends JsonSerializable with EquatableMixin {
  AllArbres$Query$Consts();

  factory AllArbres$Query$Consts.fromJson(Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'ArbreConst':
        return AllArbres$Query$Consts$ArbreConst.fromJson(json);
      default:
    }
    return _$AllArbres$Query$ConstsFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'ArbreConst':
        return (this as AllArbres$Query$Consts$ArbreConst).toJson();
      default:
    }
    return _$AllArbres$Query$ConstsToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class AllArbres$Query extends JsonSerializable with EquatableMixin {
  AllArbres$Query();

  factory AllArbres$Query.fromJson(Map<String, dynamic> json) =>
      _$AllArbres$QueryFromJson(json);

  List<AllArbres$Query$Consts>? consts;

  @override
  List<Object?> get props => [consts];
  @override
  Map<String, dynamic> toJson() => _$AllArbres$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ArbreCFragMixin$Varieties extends JsonSerializable with EquatableMixin {
  ArbreCFragMixin$Varieties();

  factory ArbreCFragMixin$Varieties.fromJson(Map<String, dynamic> json) =>
      _$ArbreCFragMixin$VarietiesFromJson(json);

  @JsonKey(fromJson: fromGraphQLIdToDartint, toJson: fromDartintToGraphQLId)
  late int id;

  late String image;

  late String label;

  @override
  List<Object?> get props => [id, image, label];
  @override
  Map<String, dynamic> toJson() => _$ArbreCFragMixin$VarietiesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ArbreCFragMixin$Sickness extends JsonSerializable with EquatableMixin {
  ArbreCFragMixin$Sickness();

  factory ArbreCFragMixin$Sickness.fromJson(Map<String, dynamic> json) =>
      _$ArbreCFragMixin$SicknessFromJson(json);

  @JsonKey(fromJson: fromGraphQLIdToDartint, toJson: fromDartintToGraphQLId)
  late int id;

  late String label;

  late String description;

  @override
  List<Object?> get props => [id, label, description];
  @override
  Map<String, dynamic> toJson() => _$ArbreCFragMixin$SicknessToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllConsts$Query$Consts$LegumeConst extends AllConsts$Query$Consts
    with EquatableMixin, LegumeCFragMixin {
  AllConsts$Query$Consts$LegumeConst();

  factory AllConsts$Query$Consts$LegumeConst.fromJson(
          Map<String, dynamic> json) =>
      _$AllConsts$Query$Consts$LegumeConstFromJson(json);

  @override
  List<Object?> get props => [
        id,
        label,
        defaultBgColor,
        baseHeight,
        baseWidth,
        image,
        description,
        exposition
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$AllConsts$Query$Consts$LegumeConstToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllConsts$Query$Consts$ArbreConst extends AllConsts$Query$Consts
    with EquatableMixin, ArbreCFragMixin {
  AllConsts$Query$Consts$ArbreConst();

  factory AllConsts$Query$Consts$ArbreConst.fromJson(
          Map<String, dynamic> json) =>
      _$AllConsts$Query$Consts$ArbreConstFromJson(json);

  @override
  List<Object?> get props => [
        id,
        baseHeight,
        label,
        defaultBgColor,
        baseWidth,
        description,
        image,
        advices,
        exposition,
        plantMonth,
        recolteMonth,
        semisMonth,
        climatDesc,
        tailleDesc,
        recolteDesc,
        tailleMonth,
        rusticity,
        varieties,
        sickness
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$AllConsts$Query$Consts$ArbreConstToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllConsts$Query$Consts$AromatConst extends AllConsts$Query$Consts
    with EquatableMixin, AromatCFragMixin {
  AllConsts$Query$Consts$AromatConst();

  factory AllConsts$Query$Consts$AromatConst.fromJson(
          Map<String, dynamic> json) =>
      _$AllConsts$Query$Consts$AromatConstFromJson(json);

  @override
  List<Object?> get props => [
        id,
        label,
        defaultBgColor,
        baseHeight,
        baseWidth,
        image,
        description,
        exposition
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$AllConsts$Query$Consts$AromatConstToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllConsts$Query$Consts extends JsonSerializable with EquatableMixin {
  AllConsts$Query$Consts();

  factory AllConsts$Query$Consts.fromJson(Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'LegumeConst':
        return AllConsts$Query$Consts$LegumeConst.fromJson(json);
      case r'ArbreConst':
        return AllConsts$Query$Consts$ArbreConst.fromJson(json);
      case r'AromatConst':
        return AllConsts$Query$Consts$AromatConst.fromJson(json);
      default:
    }
    return _$AllConsts$Query$ConstsFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'LegumeConst':
        return (this as AllConsts$Query$Consts$LegumeConst).toJson();
      case r'ArbreConst':
        return (this as AllConsts$Query$Consts$ArbreConst).toJson();
      case r'AromatConst':
        return (this as AllConsts$Query$Consts$AromatConst).toJson();
      default:
    }
    return _$AllConsts$Query$ConstsToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class AllConsts$Query extends JsonSerializable with EquatableMixin {
  AllConsts$Query();

  factory AllConsts$Query.fromJson(Map<String, dynamic> json) =>
      _$AllConsts$QueryFromJson(json);

  List<AllConsts$Query$Consts>? consts;

  @override
  List<Object?> get props => [consts];
  @override
  Map<String, dynamic> toJson() => _$AllConsts$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$Me extends JsonSerializable with EquatableMixin, UserInfoMixin {
  Me$Query$Me();

  factory Me$Query$Me.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$MeFromJson(json);

  @override
  List<Object?> get props =>
      [id, email, pseudo, premium, admin, terrains, semis];
  @override
  Map<String, dynamic> toJson() => _$Me$Query$MeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query extends JsonSerializable with EquatableMixin {
  Me$Query();

  factory Me$Query.fromJson(Map<String, dynamic> json) =>
      _$Me$QueryFromJson(json);

  Me$Query$Me? me;

  @override
  List<Object?> get props => [me];
  @override
  Map<String, dynamic> toJson() => _$Me$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserInfoMixin$Terrains$Placeables extends JsonSerializable
    with EquatableMixin {
  UserInfoMixin$Terrains$Placeables();

  factory UserInfoMixin$Terrains$Placeables.fromJson(
          Map<String, dynamic> json) =>
      _$UserInfoMixin$Terrains$PlaceablesFromJson(json);

  late String bgColor;

  String? subName;

  late String label;

  double? posY;

  double? posX;

  @JsonKey(fromJson: fromGraphQLIdToDartint, toJson: fromDartintToGraphQLId)
  late int id;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime recolteDate;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime plantDate;

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
        plantDate,
        height,
        width,
        image
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$UserInfoMixin$Terrains$PlaceablesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserInfoMixin$Terrains extends JsonSerializable with EquatableMixin {
  UserInfoMixin$Terrains();

  factory UserInfoMixin$Terrains.fromJson(Map<String, dynamic> json) =>
      _$UserInfoMixin$TerrainsFromJson(json);

  @JsonKey(fromJson: fromGraphQLIdToDartint, toJson: fromDartintToGraphQLId)
  late int id;

  late double height;

  late String bgColor;

  late double width;

  List<UserInfoMixin$Terrains$Placeables>? placeables;

  @override
  List<Object?> get props => [id, height, bgColor, width, placeables];
  @override
  Map<String, dynamic> toJson() => _$UserInfoMixin$TerrainsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserInfoMixin$Semis$Elements extends JsonSerializable
    with EquatableMixin {
  UserInfoMixin$Semis$Elements();

  factory UserInfoMixin$Semis$Elements.fromJson(Map<String, dynamic> json) =>
      _$UserInfoMixin$Semis$ElementsFromJson(json);

  @JsonKey(fromJson: fromGraphQLIdToDartint, toJson: fromDartintToGraphQLId)
  late int id;

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
  Map<String, dynamic> toJson() => _$UserInfoMixin$Semis$ElementsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserInfoMixin$Semis extends JsonSerializable with EquatableMixin {
  UserInfoMixin$Semis();

  factory UserInfoMixin$Semis.fromJson(Map<String, dynamic> json) =>
      _$UserInfoMixin$SemisFromJson(json);

  @JsonKey(fromJson: fromGraphQLIdToDartint, toJson: fromDartintToGraphQLId)
  late int id;

  late String label;

  late int column;

  late int row;

  late List<UserInfoMixin$Semis$Elements> elements;

  @override
  List<Object?> get props => [id, label, column, row, elements];
  @override
  Map<String, dynamic> toJson() => _$UserInfoMixin$SemisToJson(this);
}

enum Month {
  @JsonValue('JANVIER')
  janvier,
  @JsonValue('FEVRIER')
  fevrier,
  @JsonValue('MARS')
  mars,
  @JsonValue('AVRIL')
  avril,
  @JsonValue('MAI')
  mai,
  @JsonValue('JUIN')
  juin,
  @JsonValue('JUILLET')
  juillet,
  @JsonValue('AOUT')
  aout,
  @JsonValue('SEPTEMBRE')
  septembre,
  @JsonValue('OCTOBRE')
  octobre,
  @JsonValue('NOVEMBRE')
  novembre,
  @JsonValue('DECEMBRE')
  decembre,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum Exposition {
  @JsonValue('SOLEIL')
  soleil,
  @JsonValue('OMBRE')
  ombre,
  @JsonValue('MI_OMBRE')
  miOmbre,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum Rusticity {
  @JsonValue('TRES_RUSTIQUE')
  tresRustique,
  @JsonValue('RUSTIQUE')
  rustique,
  @JsonValue('PEU_RUSTIQUE')
  peuRustique,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

@JsonSerializable(explicitToJson: true)
class RemoveConstArguments extends JsonSerializable with EquatableMixin {
  RemoveConstArguments({required this.id});

  @override
  factory RemoveConstArguments.fromJson(Map<String, dynamic> json) =>
      _$RemoveConstArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$RemoveConstArgumentsToJson(this);
}

final REMOVE_CONST_MUTATION_DOCUMENT_OPERATION_NAME = 'RemoveConst';
final REMOVE_CONST_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'RemoveConst'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'removeConst'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: null)
      ]))
]);

class RemoveConstMutation
    extends GraphQLQuery<RemoveConst$Mutation, RemoveConstArguments> {
  RemoveConstMutation({required this.variables});

  @override
  final DocumentNode document = REMOVE_CONST_MUTATION_DOCUMENT;

  @override
  final String operationName = REMOVE_CONST_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final RemoveConstArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  RemoveConst$Mutation parse(Map<String, dynamic> json) =>
      RemoveConst$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AddConstArguments extends JsonSerializable with EquatableMixin {
  AddConstArguments({required this.image, required this.constant});

  @override
  factory AddConstArguments.fromJson(Map<String, dynamic> json) =>
      _$AddConstArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUploadToDartMultipartFile,
      toJson: fromDartMultipartFileToGraphQLUpload)
  late MultipartFile image;

  late ConstInput constant;

  @override
  List<Object?> get props => [image, constant];
  @override
  Map<String, dynamic> toJson() => _$AddConstArgumentsToJson(this);
}

final ADD_CONST_MUTATION_DOCUMENT_OPERATION_NAME = 'AddConst';
final ADD_CONST_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddConst'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'image')),
            type:
                NamedTypeNode(name: NameNode(value: 'Upload'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'constant')),
            type: NamedTypeNode(
                name: NameNode(value: 'ConstInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'addConst'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'image'),
                  value: VariableNode(name: NameNode(value: 'image'))),
              ArgumentNode(
                  name: NameNode(value: 'constant'),
                  value: VariableNode(name: NameNode(value: 'constant')))
            ],
            directives: [],
            selectionSet: null)
      ]))
]);

class AddConstMutation
    extends GraphQLQuery<AddConst$Mutation, AddConstArguments> {
  AddConstMutation({required this.variables});

  @override
  final DocumentNode document = ADD_CONST_MUTATION_DOCUMENT;

  @override
  final String operationName = ADD_CONST_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AddConstArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AddConst$Mutation parse(Map<String, dynamic> json) =>
      AddConst$Mutation.fromJson(json);
}

final REFRESH_TOKEN_MUTATION_DOCUMENT_OPERATION_NAME = 'RefreshToken';
final REFRESH_TOKEN_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'RefreshToken'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'refreshToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'token'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'refresh'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'access'),
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
                  ]))
            ]))
      ]))
]);

class RefreshTokenMutation
    extends GraphQLQuery<RefreshToken$Mutation, JsonSerializable> {
  RefreshTokenMutation();

  @override
  final DocumentNode document = REFRESH_TOKEN_MUTATION_DOCUMENT;

  @override
  final String operationName = REFRESH_TOKEN_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  RefreshToken$Mutation parse(Map<String, dynamic> json) =>
      RefreshToken$Mutation.fromJson(json);
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

final CONNECTION_MUTATION_DOCUMENT_OPERATION_NAME = 'Connection';
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
  final String operationName = CONNECTION_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final ConnectionArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Connection$Mutation parse(Map<String, dynamic> json) =>
      Connection$Mutation.fromJson(json);
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

final REGISTER_MUTATION_DOCUMENT_OPERATION_NAME = 'Register';
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
  final String operationName = REGISTER_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final RegisterArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Register$Mutation parse(Map<String, dynamic> json) =>
      Register$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AllAromatArguments extends JsonSerializable with EquatableMixin {
  AllAromatArguments({required this.numberInPage, required this.pageNumber});

  @override
  factory AllAromatArguments.fromJson(Map<String, dynamic> json) =>
      _$AllAromatArgumentsFromJson(json);

  late int numberInPage;

  late int pageNumber;

  @override
  List<Object?> get props => [numberInPage, pageNumber];
  @override
  Map<String, dynamic> toJson() => _$AllAromatArgumentsToJson(this);
}

final ALL_AROMAT_QUERY_DOCUMENT_OPERATION_NAME = 'AllAromat';
final ALL_AROMAT_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'AllAromat'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'numberInPage')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'pageNumber')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'consts'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'numberInPage'),
                  value: VariableNode(name: NameNode(value: 'numberInPage'))),
              ArgumentNode(
                  name: NameNode(value: 'pageNumber'),
                  value: VariableNode(name: NameNode(value: 'pageNumber')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'AromatConst'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'AromatCFrag'), directives: [])
                  ]))
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'AromatCFrag'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'AromatConst'), isNonNull: false)),
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
            name: NameNode(value: 'defaultBgColor'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'baseHeight'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'baseWidth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'exposition'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class AllAromatQuery extends GraphQLQuery<AllAromat$Query, AllAromatArguments> {
  AllAromatQuery({required this.variables});

  @override
  final DocumentNode document = ALL_AROMAT_QUERY_DOCUMENT;

  @override
  final String operationName = ALL_AROMAT_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final AllAromatArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AllAromat$Query parse(Map<String, dynamic> json) =>
      AllAromat$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AllLegumesArguments extends JsonSerializable with EquatableMixin {
  AllLegumesArguments({required this.pageNumber, required this.numberInPage});

  @override
  factory AllLegumesArguments.fromJson(Map<String, dynamic> json) =>
      _$AllLegumesArgumentsFromJson(json);

  late int pageNumber;

  late int numberInPage;

  @override
  List<Object?> get props => [pageNumber, numberInPage];
  @override
  Map<String, dynamic> toJson() => _$AllLegumesArgumentsToJson(this);
}

final ALL_LEGUMES_QUERY_DOCUMENT_OPERATION_NAME = 'AllLegumes';
final ALL_LEGUMES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'AllLegumes'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'pageNumber')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'numberInPage')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'consts'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'pageNumber'),
                  value: VariableNode(name: NameNode(value: 'pageNumber'))),
              ArgumentNode(
                  name: NameNode(value: 'numberInPage'),
                  value: VariableNode(name: NameNode(value: 'numberInPage')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'LegumeConst'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'LegumeCFrag'), directives: [])
                  ]))
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'LegumeCFrag'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'LegumeConst'), isNonNull: false)),
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
            name: NameNode(value: 'defaultBgColor'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'baseHeight'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'baseWidth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'exposition'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class AllLegumesQuery
    extends GraphQLQuery<AllLegumes$Query, AllLegumesArguments> {
  AllLegumesQuery({required this.variables});

  @override
  final DocumentNode document = ALL_LEGUMES_QUERY_DOCUMENT;

  @override
  final String operationName = ALL_LEGUMES_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final AllLegumesArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AllLegumes$Query parse(Map<String, dynamic> json) =>
      AllLegumes$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class Kw$ConstArguments extends JsonSerializable with EquatableMixin {
  Kw$ConstArguments({required this.constId});

  @override
  factory Kw$ConstArguments.fromJson(Map<String, dynamic> json) =>
      _$Kw$ConstArgumentsFromJson(json);

  late int constId;

  @override
  List<Object?> get props => [constId];
  @override
  Map<String, dynamic> toJson() => _$Kw$ConstArgumentsToJson(this);
}

final KW$_CONST_QUERY_DOCUMENT_OPERATION_NAME = 'Const';
final KW$_CONST_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Const'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'constId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'const'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'constId')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'LegumeConst'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'description'),
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
                        name: NameNode(value: 'defaultBgColor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'baseHeight'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'baseWidth'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'image'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'ArbreConst'),
                          isNonNull: false)),
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
                        name: NameNode(value: 'defaultBgColor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'baseHeight'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'baseWidth'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'image'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'description'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'AromatConst'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'label'),
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
                        name: NameNode(value: 'defaultBgColor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'baseHeight'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'baseWidth'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'image'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'description'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class Kw$ConstQuery extends GraphQLQuery<Kw$Const$Query, Kw$ConstArguments> {
  Kw$ConstQuery({required this.variables});

  @override
  final DocumentNode document = KW$_CONST_QUERY_DOCUMENT;

  @override
  final String operationName = KW$_CONST_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final Kw$ConstArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Kw$Const$Query parse(Map<String, dynamic> json) =>
      Kw$Const$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AllArbresArguments extends JsonSerializable with EquatableMixin {
  AllArbresArguments({required this.numberInPage, required this.pageNumber});

  @override
  factory AllArbresArguments.fromJson(Map<String, dynamic> json) =>
      _$AllArbresArgumentsFromJson(json);

  late int numberInPage;

  late int pageNumber;

  @override
  List<Object?> get props => [numberInPage, pageNumber];
  @override
  Map<String, dynamic> toJson() => _$AllArbresArgumentsToJson(this);
}

final ALL_ARBRES_QUERY_DOCUMENT_OPERATION_NAME = 'AllArbres';
final ALL_ARBRES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'AllArbres'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'numberInPage')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'pageNumber')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'consts'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'numberInPage'),
                  value: VariableNode(name: NameNode(value: 'numberInPage'))),
              ArgumentNode(
                  name: NameNode(value: 'pageNumber'),
                  value: VariableNode(name: NameNode(value: 'pageNumber')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'ArbreConst'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'ArbreCFrag'), directives: [])
                  ]))
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'ArbreCFrag'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'ArbreConst'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'baseHeight'),
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
            name: NameNode(value: 'defaultBgColor'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'baseWidth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'advices'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'exposition'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'plantMonth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'recolteMonth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'semisMonth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'climatDesc'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'tailleDesc'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'recolteDesc'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'tailleMonth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'rusticity'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'varieties'),
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
                  name: NameNode(value: 'image'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'label'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'sickness'),
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
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class AllArbresQuery extends GraphQLQuery<AllArbres$Query, AllArbresArguments> {
  AllArbresQuery({required this.variables});

  @override
  final DocumentNode document = ALL_ARBRES_QUERY_DOCUMENT;

  @override
  final String operationName = ALL_ARBRES_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final AllArbresArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AllArbres$Query parse(Map<String, dynamic> json) =>
      AllArbres$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AllConstsArguments extends JsonSerializable with EquatableMixin {
  AllConstsArguments({required this.pageNumber, required this.numberInPage});

  @override
  factory AllConstsArguments.fromJson(Map<String, dynamic> json) =>
      _$AllConstsArgumentsFromJson(json);

  late int pageNumber;

  late int numberInPage;

  @override
  List<Object?> get props => [pageNumber, numberInPage];
  @override
  Map<String, dynamic> toJson() => _$AllConstsArgumentsToJson(this);
}

final ALL_CONSTS_QUERY_DOCUMENT_OPERATION_NAME = 'AllConsts';
final ALL_CONSTS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'AllConsts'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'pageNumber')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'numberInPage')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'consts'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'pageNumber'),
                  value: VariableNode(name: NameNode(value: 'pageNumber'))),
              ArgumentNode(
                  name: NameNode(value: 'numberInPage'),
                  value: VariableNode(name: NameNode(value: 'numberInPage')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'LegumeConst'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'LegumeCFrag'), directives: [])
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'ArbreConst'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'ArbreCFrag'), directives: [])
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'AromatConst'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'AromatCFrag'), directives: [])
                  ]))
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'LegumeCFrag'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'LegumeConst'), isNonNull: false)),
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
            name: NameNode(value: 'defaultBgColor'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'baseHeight'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'baseWidth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'exposition'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'ArbreCFrag'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'ArbreConst'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'baseHeight'),
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
            name: NameNode(value: 'defaultBgColor'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'baseWidth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'advices'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'exposition'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'plantMonth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'recolteMonth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'semisMonth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'climatDesc'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'tailleDesc'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'recolteDesc'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'tailleMonth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'rusticity'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'varieties'),
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
                  name: NameNode(value: 'image'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'label'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'sickness'),
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
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'AromatCFrag'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'AromatConst'), isNonNull: false)),
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
            name: NameNode(value: 'defaultBgColor'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'baseHeight'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'baseWidth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'exposition'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class AllConstsQuery extends GraphQLQuery<AllConsts$Query, AllConstsArguments> {
  AllConstsQuery({required this.variables});

  @override
  final DocumentNode document = ALL_CONSTS_QUERY_DOCUMENT;

  @override
  final String operationName = ALL_CONSTS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final AllConstsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AllConsts$Query parse(Map<String, dynamic> json) =>
      AllConsts$Query.fromJson(json);
}

final ME_QUERY_DOCUMENT_OPERATION_NAME = 'Me';
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
              FragmentSpreadNode(
                  name: NameNode(value: 'UserInfo'), directives: [])
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'UserInfo'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false)),
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
                  name: NameNode(value: 'placeables'),
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
            ]))
      ]))
]);

class MeQuery extends GraphQLQuery<Me$Query, JsonSerializable> {
  MeQuery();

  @override
  final DocumentNode document = ME_QUERY_DOCUMENT;

  @override
  final String operationName = ME_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  Me$Query parse(Map<String, dynamic> json) => Me$Query.fromJson(json);
}

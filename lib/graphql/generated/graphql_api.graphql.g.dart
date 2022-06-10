// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoveConst$Mutation _$RemoveConst$MutationFromJson(
        Map<String, dynamic> json) =>
    RemoveConst$Mutation()..removeConst = json['removeConst'] as bool;

Map<String, dynamic> _$RemoveConst$MutationToJson(
        RemoveConst$Mutation instance) =>
    <String, dynamic>{
      'removeConst': instance.removeConst,
    };

AddConst$Mutation _$AddConst$MutationFromJson(Map<String, dynamic> json) =>
    AddConst$Mutation()..addConst = json['addConst'] as bool;

Map<String, dynamic> _$AddConst$MutationToJson(AddConst$Mutation instance) =>
    <String, dynamic>{
      'addConst': instance.addConst,
    };

ConstInput _$ConstInputFromJson(Map<String, dynamic> json) => ConstInput(
      legume: json['legume'] == null
          ? null
          : LegumeConstInput.fromJson(json['legume'] as Map<String, dynamic>),
      arbre: json['arbre'] == null
          ? null
          : ArbreConstInput.fromJson(json['arbre'] as Map<String, dynamic>),
      aromat: json['aromat'] == null
          ? null
          : AromatConstInput.fromJson(json['aromat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConstInputToJson(ConstInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('legume', instance.legume?.toJson());
  writeNotNull('arbre', instance.arbre?.toJson());
  writeNotNull('aromat', instance.aromat?.toJson());
  return val;
}

LegumeConstInput _$LegumeConstInputFromJson(Map<String, dynamic> json) =>
    LegumeConstInput(
      label: json['label'] as String,
      defaultBgColor: json['defaultBgColor'] as String,
      baseHeight: (json['baseHeight'] as num).toDouble(),
      baseWidth: (json['baseWidth'] as num).toDouble(),
      description: json['description'] as String,
      cultureDesc: json['cultureDesc'] as String,
      advices:
          (json['advices'] as List<dynamic>).map((e) => e as String).toList(),
      plantMonth: (json['plantMonth'] as List<dynamic>)
          .map((e) => $enumDecode(_$MonthEnumMap, e,
              unknownValue: Month.artemisUnknown))
          .toList(),
      recolteDesc: json['recolteDesc'] as String,
      recolteMonth: (json['recolteMonth'] as List<dynamic>)
          .map((e) => $enumDecode(_$MonthEnumMap, e,
              unknownValue: Month.artemisUnknown))
          .toList(),
      semisMonth: (json['semisMonth'] as List<dynamic>)
          .map((e) => $enumDecode(_$MonthEnumMap, e,
              unknownValue: Month.artemisUnknown))
          .toList(),
      soilDesc: json['soilDesc'] as String,
      exposition: $enumDecode(_$ExpositionEnumMap, json['exposition'],
          unknownValue: Exposition.artemisUnknown),
    );

Map<String, dynamic> _$LegumeConstInputToJson(LegumeConstInput instance) =>
    <String, dynamic>{
      'label': instance.label,
      'defaultBgColor': instance.defaultBgColor,
      'baseHeight': instance.baseHeight,
      'baseWidth': instance.baseWidth,
      'description': instance.description,
      'cultureDesc': instance.cultureDesc,
      'advices': instance.advices,
      'plantMonth': instance.plantMonth.map((e) => _$MonthEnumMap[e]).toList(),
      'recolteDesc': instance.recolteDesc,
      'recolteMonth':
          instance.recolteMonth.map((e) => _$MonthEnumMap[e]).toList(),
      'semisMonth': instance.semisMonth.map((e) => _$MonthEnumMap[e]).toList(),
      'soilDesc': instance.soilDesc,
      'exposition': _$ExpositionEnumMap[instance.exposition],
    };

const _$MonthEnumMap = {
  Month.janvier: 'JANVIER',
  Month.fevrier: 'FEVRIER',
  Month.mars: 'MARS',
  Month.avril: 'AVRIL',
  Month.mai: 'MAI',
  Month.juin: 'JUIN',
  Month.juillet: 'JUILLET',
  Month.aout: 'AOUT',
  Month.septembre: 'SEPTEMBRE',
  Month.octobre: 'OCTOBRE',
  Month.novembre: 'NOVEMBRE',
  Month.decembre: 'DECEMBRE',
  Month.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$ExpositionEnumMap = {
  Exposition.soleil: 'SOLEIL',
  Exposition.ombre: 'OMBRE',
  Exposition.miOmbre: 'MI_OMBRE',
  Exposition.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

ArbreConstInput _$ArbreConstInputFromJson(Map<String, dynamic> json) =>
    ArbreConstInput(
      label: json['label'] as String,
      defaultBgColor: json['defaultBgColor'] as String,
      baseHeight: (json['baseHeight'] as num).toDouble(),
      baseWidth: (json['baseWidth'] as num).toDouble(),
      description: json['description'] as String,
      climatDesc: json['climatDesc'] as String,
      tailleDesc: json['tailleDesc'] as String,
      recolteDesc: json['recolteDesc'] as String,
      tailleMonth:
          (json['tailleMonth'] as List<dynamic>).map((e) => e as int).toList(),
      rusticity: $enumDecode(_$RusticityEnumMap, json['rusticity'],
          unknownValue: Rusticity.artemisUnknown),
      soilDesc: json['soilDesc'] as String,
      advices:
          (json['advices'] as List<dynamic>?)?.map((e) => e as String).toList(),
      exposition: $enumDecode(_$ExpositionEnumMap, json['exposition'],
          unknownValue: Exposition.artemisUnknown),
      plantMonth: (json['plantMonth'] as List<dynamic>)
          .map((e) => $enumDecode(_$MonthEnumMap, e,
              unknownValue: Month.artemisUnknown))
          .toList(),
      recolteMonth: (json['recolteMonth'] as List<dynamic>)
          .map((e) => $enumDecode(_$MonthEnumMap, e,
              unknownValue: Month.artemisUnknown))
          .toList(),
      semisMonth: (json['semisMonth'] as List<dynamic>)
          .map((e) => $enumDecode(_$MonthEnumMap, e,
              unknownValue: Month.artemisUnknown))
          .toList(),
    );

Map<String, dynamic> _$ArbreConstInputToJson(ArbreConstInput instance) {
  final val = <String, dynamic>{
    'label': instance.label,
    'defaultBgColor': instance.defaultBgColor,
    'baseHeight': instance.baseHeight,
    'baseWidth': instance.baseWidth,
    'description': instance.description,
    'climatDesc': instance.climatDesc,
    'tailleDesc': instance.tailleDesc,
    'recolteDesc': instance.recolteDesc,
    'tailleMonth': instance.tailleMonth,
    'rusticity': _$RusticityEnumMap[instance.rusticity],
    'soilDesc': instance.soilDesc,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('advices', instance.advices);
  val['exposition'] = _$ExpositionEnumMap[instance.exposition];
  val['plantMonth'] =
      instance.plantMonth.map((e) => _$MonthEnumMap[e]).toList();
  val['recolteMonth'] =
      instance.recolteMonth.map((e) => _$MonthEnumMap[e]).toList();
  val['semisMonth'] =
      instance.semisMonth.map((e) => _$MonthEnumMap[e]).toList();
  return val;
}

const _$RusticityEnumMap = {
  Rusticity.tresRustique: 'TRES_RUSTIQUE',
  Rusticity.rustique: 'RUSTIQUE',
  Rusticity.peuRustique: 'PEU_RUSTIQUE',
  Rusticity.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

AromatConstInput _$AromatConstInputFromJson(Map<String, dynamic> json) =>
    AromatConstInput(
      label: json['label'] as String,
      defaultBgColor: json['defaultBgColor'] as String,
      baseHeight: (json['baseHeight'] as num).toDouble(),
      baseWidth: (json['baseWidth'] as num).toDouble(),
      description: json['description'] as String,
      soilDesc: json['soilDesc'] as String,
      advices:
          (json['advices'] as List<dynamic>?)?.map((e) => e as String).toList(),
      exposition: $enumDecode(_$ExpositionEnumMap, json['exposition'],
          unknownValue: Exposition.artemisUnknown),
      plantMonth: (json['plantMonth'] as List<dynamic>)
          .map((e) => $enumDecode(_$MonthEnumMap, e,
              unknownValue: Month.artemisUnknown))
          .toList(),
      recolteMonth: (json['recolteMonth'] as List<dynamic>)
          .map((e) => $enumDecode(_$MonthEnumMap, e,
              unknownValue: Month.artemisUnknown))
          .toList(),
      semisMonth: (json['semisMonth'] as List<dynamic>)
          .map((e) => $enumDecode(_$MonthEnumMap, e,
              unknownValue: Month.artemisUnknown))
          .toList(),
    );

Map<String, dynamic> _$AromatConstInputToJson(AromatConstInput instance) {
  final val = <String, dynamic>{
    'label': instance.label,
    'defaultBgColor': instance.defaultBgColor,
    'baseHeight': instance.baseHeight,
    'baseWidth': instance.baseWidth,
    'description': instance.description,
    'soilDesc': instance.soilDesc,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('advices', instance.advices);
  val['exposition'] = _$ExpositionEnumMap[instance.exposition];
  val['plantMonth'] =
      instance.plantMonth.map((e) => _$MonthEnumMap[e]).toList();
  val['recolteMonth'] =
      instance.recolteMonth.map((e) => _$MonthEnumMap[e]).toList();
  val['semisMonth'] =
      instance.semisMonth.map((e) => _$MonthEnumMap[e]).toList();
  return val;
}

RefreshToken$Mutation$RefreshToken$Token
    _$RefreshToken$Mutation$RefreshToken$TokenFromJson(
            Map<String, dynamic> json) =>
        RefreshToken$Mutation$RefreshToken$Token()
          ..refresh = json['refresh'] as String
          ..access = json['access'] as String;

Map<String, dynamic> _$RefreshToken$Mutation$RefreshToken$TokenToJson(
        RefreshToken$Mutation$RefreshToken$Token instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
      'access': instance.access,
    };

RefreshToken$Mutation$RefreshToken$Error
    _$RefreshToken$Mutation$RefreshToken$ErrorFromJson(
            Map<String, dynamic> json) =>
        RefreshToken$Mutation$RefreshToken$Error()
          ..label = json['label'] as String
          ..message = json['message'] as String;

Map<String, dynamic> _$RefreshToken$Mutation$RefreshToken$ErrorToJson(
        RefreshToken$Mutation$RefreshToken$Error instance) =>
    <String, dynamic>{
      'label': instance.label,
      'message': instance.message,
    };

RefreshToken$Mutation$RefreshToken _$RefreshToken$Mutation$RefreshTokenFromJson(
        Map<String, dynamic> json) =>
    RefreshToken$Mutation$RefreshToken()
      ..token = json['token'] == null
          ? null
          : RefreshToken$Mutation$RefreshToken$Token.fromJson(
              json['token'] as Map<String, dynamic>)
      ..error = json['error'] == null
          ? null
          : RefreshToken$Mutation$RefreshToken$Error.fromJson(
              json['error'] as Map<String, dynamic>);

Map<String, dynamic> _$RefreshToken$Mutation$RefreshTokenToJson(
    RefreshToken$Mutation$RefreshToken instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token', instance.token?.toJson());
  writeNotNull('error', instance.error?.toJson());
  return val;
}

RefreshToken$Mutation _$RefreshToken$MutationFromJson(
        Map<String, dynamic> json) =>
    RefreshToken$Mutation()
      ..refreshToken = RefreshToken$Mutation$RefreshToken.fromJson(
          json['refreshToken'] as Map<String, dynamic>);

Map<String, dynamic> _$RefreshToken$MutationToJson(
        RefreshToken$Mutation instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken.toJson(),
    };

Connection$Mutation$Connect$Token _$Connection$Mutation$Connect$TokenFromJson(
        Map<String, dynamic> json) =>
    Connection$Mutation$Connect$Token()
      ..access = json['access'] as String
      ..refresh = json['refresh'] as String;

Map<String, dynamic> _$Connection$Mutation$Connect$TokenToJson(
        Connection$Mutation$Connect$Token instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };

Connection$Mutation$Connect$Error _$Connection$Mutation$Connect$ErrorFromJson(
        Map<String, dynamic> json) =>
    Connection$Mutation$Connect$Error()
      ..label = json['label'] as String
      ..message = json['message'] as String;

Map<String, dynamic> _$Connection$Mutation$Connect$ErrorToJson(
        Connection$Mutation$Connect$Error instance) =>
    <String, dynamic>{
      'label': instance.label,
      'message': instance.message,
    };

Connection$Mutation$Connect$User$Terrains
    _$Connection$Mutation$Connect$User$TerrainsFromJson(
            Map<String, dynamic> json) =>
        Connection$Mutation$Connect$User$Terrains()
          ..id = fromGraphQLIdToDartint(json['id'] as String);

Map<String, dynamic> _$Connection$Mutation$Connect$User$TerrainsToJson(
    Connection$Mutation$Connect$User$Terrains instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  return val;
}

Connection$Mutation$Connect$User _$Connection$Mutation$Connect$UserFromJson(
        Map<String, dynamic> json) =>
    Connection$Mutation$Connect$User()
      ..id = fromGraphQLIdToDartint(json['id'] as String)
      ..email = json['email'] as String
      ..pseudo = json['pseudo'] as String
      ..terrains = (json['terrains'] as List<dynamic>?)
          ?.map((e) => Connection$Mutation$Connect$User$Terrains.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Connection$Mutation$Connect$UserToJson(
    Connection$Mutation$Connect$User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  val['email'] = instance.email;
  val['pseudo'] = instance.pseudo;
  writeNotNull('terrains', instance.terrains?.map((e) => e.toJson()).toList());
  return val;
}

Connection$Mutation$Connect _$Connection$Mutation$ConnectFromJson(
        Map<String, dynamic> json) =>
    Connection$Mutation$Connect()
      ..token = json['token'] == null
          ? null
          : Connection$Mutation$Connect$Token.fromJson(
              json['token'] as Map<String, dynamic>)
      ..error = json['error'] == null
          ? null
          : Connection$Mutation$Connect$Error.fromJson(
              json['error'] as Map<String, dynamic>)
      ..user = json['user'] == null
          ? null
          : Connection$Mutation$Connect$User.fromJson(
              json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$Connection$Mutation$ConnectToJson(
    Connection$Mutation$Connect instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token', instance.token?.toJson());
  writeNotNull('error', instance.error?.toJson());
  writeNotNull('user', instance.user?.toJson());
  return val;
}

Connection$Mutation _$Connection$MutationFromJson(Map<String, dynamic> json) =>
    Connection$Mutation()
      ..connect = Connection$Mutation$Connect.fromJson(
          json['connect'] as Map<String, dynamic>);

Map<String, dynamic> _$Connection$MutationToJson(
        Connection$Mutation instance) =>
    <String, dynamic>{
      'connect': instance.connect.toJson(),
    };

Register$Mutation$Register$Token _$Register$Mutation$Register$TokenFromJson(
        Map<String, dynamic> json) =>
    Register$Mutation$Register$Token()
      ..access = json['access'] as String
      ..refresh = json['refresh'] as String;

Map<String, dynamic> _$Register$Mutation$Register$TokenToJson(
        Register$Mutation$Register$Token instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };

Register$Mutation$Register$Error _$Register$Mutation$Register$ErrorFromJson(
        Map<String, dynamic> json) =>
    Register$Mutation$Register$Error()
      ..label = json['label'] as String
      ..message = json['message'] as String;

Map<String, dynamic> _$Register$Mutation$Register$ErrorToJson(
        Register$Mutation$Register$Error instance) =>
    <String, dynamic>{
      'label': instance.label,
      'message': instance.message,
    };

Register$Mutation$Register$User _$Register$Mutation$Register$UserFromJson(
        Map<String, dynamic> json) =>
    Register$Mutation$Register$User()
      ..id = fromGraphQLIdToDartint(json['id'] as String);

Map<String, dynamic> _$Register$Mutation$Register$UserToJson(
    Register$Mutation$Register$User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  return val;
}

Register$Mutation$Register _$Register$Mutation$RegisterFromJson(
        Map<String, dynamic> json) =>
    Register$Mutation$Register()
      ..token = json['token'] == null
          ? null
          : Register$Mutation$Register$Token.fromJson(
              json['token'] as Map<String, dynamic>)
      ..error = json['error'] == null
          ? null
          : Register$Mutation$Register$Error.fromJson(
              json['error'] as Map<String, dynamic>)
      ..user = json['user'] == null
          ? null
          : Register$Mutation$Register$User.fromJson(
              json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$Register$Mutation$RegisterToJson(
    Register$Mutation$Register instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token', instance.token?.toJson());
  writeNotNull('error', instance.error?.toJson());
  writeNotNull('user', instance.user?.toJson());
  return val;
}

Register$Mutation _$Register$MutationFromJson(Map<String, dynamic> json) =>
    Register$Mutation()
      ..register = Register$Mutation$Register.fromJson(
          json['register'] as Map<String, dynamic>);

Map<String, dynamic> _$Register$MutationToJson(Register$Mutation instance) =>
    <String, dynamic>{
      'register': instance.register.toJson(),
    };

AllAromat$Query$Consts$AromatConst _$AllAromat$Query$Consts$AromatConstFromJson(
        Map<String, dynamic> json) =>
    AllAromat$Query$Consts$AromatConst()
      ..id = fromGraphQLIdToDartint(json['id'] as String)
      ..label = json['label'] as String
      ..defaultBgColor = json['defaultBgColor'] as String
      ..baseHeight = (json['baseHeight'] as num).toDouble()
      ..baseWidth = (json['baseWidth'] as num).toDouble()
      ..image = json['image'] as String
      ..description = json['description'] as String
      ..exposition = $enumDecode(_$ExpositionEnumMap, json['exposition'],
          unknownValue: Exposition.artemisUnknown)
      ..$$typename = json['__typename'] as String?;

Map<String, dynamic> _$AllAromat$Query$Consts$AromatConstToJson(
    AllAromat$Query$Consts$AromatConst instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  val['label'] = instance.label;
  val['defaultBgColor'] = instance.defaultBgColor;
  val['baseHeight'] = instance.baseHeight;
  val['baseWidth'] = instance.baseWidth;
  val['image'] = instance.image;
  val['description'] = instance.description;
  val['exposition'] = _$ExpositionEnumMap[instance.exposition];
  writeNotNull('__typename', instance.$$typename);
  return val;
}

AllAromat$Query$Consts _$AllAromat$Query$ConstsFromJson(
        Map<String, dynamic> json) =>
    AllAromat$Query$Consts()..$$typename = json['__typename'] as String?;

Map<String, dynamic> _$AllAromat$Query$ConstsToJson(
    AllAromat$Query$Consts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.$$typename);
  return val;
}

AllAromat$Query _$AllAromat$QueryFromJson(Map<String, dynamic> json) =>
    AllAromat$Query()
      ..consts = (json['consts'] as List<dynamic>?)
          ?.map(
              (e) => AllAromat$Query$Consts.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AllAromat$QueryToJson(AllAromat$Query instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('consts', instance.consts?.map((e) => e.toJson()).toList());
  return val;
}

AllLegumes$Query$Consts$LegumeConst
    _$AllLegumes$Query$Consts$LegumeConstFromJson(Map<String, dynamic> json) =>
        AllLegumes$Query$Consts$LegumeConst()
          ..id = fromGraphQLIdToDartint(json['id'] as String)
          ..label = json['label'] as String
          ..defaultBgColor = json['defaultBgColor'] as String
          ..baseHeight = (json['baseHeight'] as num).toDouble()
          ..baseWidth = (json['baseWidth'] as num).toDouble()
          ..image = json['image'] as String
          ..description = json['description'] as String
          ..exposition = $enumDecode(_$ExpositionEnumMap, json['exposition'],
              unknownValue: Exposition.artemisUnknown)
          ..$$typename = json['__typename'] as String?;

Map<String, dynamic> _$AllLegumes$Query$Consts$LegumeConstToJson(
    AllLegumes$Query$Consts$LegumeConst instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  val['label'] = instance.label;
  val['defaultBgColor'] = instance.defaultBgColor;
  val['baseHeight'] = instance.baseHeight;
  val['baseWidth'] = instance.baseWidth;
  val['image'] = instance.image;
  val['description'] = instance.description;
  val['exposition'] = _$ExpositionEnumMap[instance.exposition];
  writeNotNull('__typename', instance.$$typename);
  return val;
}

AllLegumes$Query$Consts _$AllLegumes$Query$ConstsFromJson(
        Map<String, dynamic> json) =>
    AllLegumes$Query$Consts()..$$typename = json['__typename'] as String?;

Map<String, dynamic> _$AllLegumes$Query$ConstsToJson(
    AllLegumes$Query$Consts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.$$typename);
  return val;
}

AllLegumes$Query _$AllLegumes$QueryFromJson(Map<String, dynamic> json) =>
    AllLegumes$Query()
      ..consts = (json['consts'] as List<dynamic>?)
          ?.map((e) =>
              AllLegumes$Query$Consts.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AllLegumes$QueryToJson(AllLegumes$Query instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('consts', instance.consts?.map((e) => e.toJson()).toList());
  return val;
}

Kw$Const$Query$Kw$const$LegumeConst
    _$Kw$Const$Query$Kw$const$LegumeConstFromJson(Map<String, dynamic> json) =>
        Kw$Const$Query$Kw$const$LegumeConst()
          ..$$typename = json['__typename'] as String?
          ..description = json['description'] as String
          ..label = json['label'] as String
          ..defaultBgColor = json['defaultBgColor'] as String
          ..baseHeight = (json['baseHeight'] as num).toDouble()
          ..baseWidth = (json['baseWidth'] as num).toDouble()
          ..image = json['image'] as String
          ..id = fromGraphQLIdToDartint(json['id'] as String);

Map<String, dynamic> _$Kw$Const$Query$Kw$const$LegumeConstToJson(
    Kw$Const$Query$Kw$const$LegumeConst instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.$$typename);
  val['description'] = instance.description;
  val['label'] = instance.label;
  val['defaultBgColor'] = instance.defaultBgColor;
  val['baseHeight'] = instance.baseHeight;
  val['baseWidth'] = instance.baseWidth;
  val['image'] = instance.image;
  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  return val;
}

Kw$Const$Query$Kw$const$ArbreConst _$Kw$Const$Query$Kw$const$ArbreConstFromJson(
        Map<String, dynamic> json) =>
    Kw$Const$Query$Kw$const$ArbreConst()
      ..$$typename = json['__typename'] as String?
      ..id = fromGraphQLIdToDartint(json['id'] as String)
      ..label = json['label'] as String
      ..defaultBgColor = json['defaultBgColor'] as String
      ..baseHeight = (json['baseHeight'] as num).toDouble()
      ..baseWidth = (json['baseWidth'] as num).toDouble()
      ..image = json['image'] as String
      ..description = json['description'] as String;

Map<String, dynamic> _$Kw$Const$Query$Kw$const$ArbreConstToJson(
    Kw$Const$Query$Kw$const$ArbreConst instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.$$typename);
  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  val['label'] = instance.label;
  val['defaultBgColor'] = instance.defaultBgColor;
  val['baseHeight'] = instance.baseHeight;
  val['baseWidth'] = instance.baseWidth;
  val['image'] = instance.image;
  val['description'] = instance.description;
  return val;
}

Kw$Const$Query$Kw$const$AromatConst
    _$Kw$Const$Query$Kw$const$AromatConstFromJson(Map<String, dynamic> json) =>
        Kw$Const$Query$Kw$const$AromatConst()
          ..$$typename = json['__typename'] as String?
          ..label = json['label'] as String
          ..id = fromGraphQLIdToDartint(json['id'] as String)
          ..defaultBgColor = json['defaultBgColor'] as String
          ..baseHeight = (json['baseHeight'] as num).toDouble()
          ..baseWidth = (json['baseWidth'] as num).toDouble()
          ..image = json['image'] as String
          ..description = json['description'] as String;

Map<String, dynamic> _$Kw$Const$Query$Kw$const$AromatConstToJson(
    Kw$Const$Query$Kw$const$AromatConst instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.$$typename);
  val['label'] = instance.label;
  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  val['defaultBgColor'] = instance.defaultBgColor;
  val['baseHeight'] = instance.baseHeight;
  val['baseWidth'] = instance.baseWidth;
  val['image'] = instance.image;
  val['description'] = instance.description;
  return val;
}

Kw$Const$Query$Kw$const _$Kw$Const$Query$Kw$constFromJson(
        Map<String, dynamic> json) =>
    Kw$Const$Query$Kw$const()..$$typename = json['__typename'] as String?;

Map<String, dynamic> _$Kw$Const$Query$Kw$constToJson(
    Kw$Const$Query$Kw$const instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.$$typename);
  return val;
}

Kw$Const$Query _$Kw$Const$QueryFromJson(Map<String, dynamic> json) =>
    Kw$Const$Query()
      ..kw$const = json['const'] == null
          ? null
          : Kw$Const$Query$Kw$const.fromJson(
              json['const'] as Map<String, dynamic>);

Map<String, dynamic> _$Kw$Const$QueryToJson(Kw$Const$Query instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('const', instance.kw$const?.toJson());
  return val;
}

AllArbres$Query$Consts$ArbreConst _$AllArbres$Query$Consts$ArbreConstFromJson(
        Map<String, dynamic> json) =>
    AllArbres$Query$Consts$ArbreConst()
      ..id = fromGraphQLIdToDartint(json['id'] as String)
      ..baseHeight = (json['baseHeight'] as num).toDouble()
      ..label = json['label'] as String
      ..defaultBgColor = json['defaultBgColor'] as String
      ..baseWidth = (json['baseWidth'] as num).toDouble()
      ..description = json['description'] as String
      ..image = json['image'] as String
      ..advices =
          (json['advices'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..exposition = $enumDecode(_$ExpositionEnumMap, json['exposition'],
          unknownValue: Exposition.artemisUnknown)
      ..plantMonth = (json['plantMonth'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MonthEnumMap, e,
              unknownValue: Month.artemisUnknown))
          .toList()
      ..recolteMonth = (json['recolteMonth'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MonthEnumMap, e,
              unknownValue: Month.artemisUnknown))
          .toList()
      ..semisMonth = (json['semisMonth'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MonthEnumMap, e,
              unknownValue: Month.artemisUnknown))
          .toList()
      ..climatDesc = json['climatDesc'] as String
      ..tailleDesc = json['tailleDesc'] as String
      ..recolteDesc = json['recolteDesc'] as String
      ..tailleMonth =
          (json['tailleMonth'] as List<dynamic>).map((e) => e as int).toList()
      ..rusticity = $enumDecode(_$RusticityEnumMap, json['rusticity'],
          unknownValue: Rusticity.artemisUnknown)
      ..varieties = (json['varieties'] as List<dynamic>?)
          ?.map((e) =>
              ArbreCFragMixin$Varieties.fromJson(e as Map<String, dynamic>))
          .toList()
      ..sickness = (json['sickness'] as List<dynamic>?)
          ?.map((e) =>
              ArbreCFragMixin$Sickness.fromJson(e as Map<String, dynamic>))
          .toList()
      ..$$typename = json['__typename'] as String?;

Map<String, dynamic> _$AllArbres$Query$Consts$ArbreConstToJson(
    AllArbres$Query$Consts$ArbreConst instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  val['baseHeight'] = instance.baseHeight;
  val['label'] = instance.label;
  val['defaultBgColor'] = instance.defaultBgColor;
  val['baseWidth'] = instance.baseWidth;
  val['description'] = instance.description;
  val['image'] = instance.image;
  writeNotNull('advices', instance.advices);
  val['exposition'] = _$ExpositionEnumMap[instance.exposition];
  writeNotNull('plantMonth',
      instance.plantMonth?.map((e) => _$MonthEnumMap[e]).toList());
  writeNotNull('recolteMonth',
      instance.recolteMonth?.map((e) => _$MonthEnumMap[e]).toList());
  writeNotNull('semisMonth',
      instance.semisMonth?.map((e) => _$MonthEnumMap[e]).toList());
  val['climatDesc'] = instance.climatDesc;
  val['tailleDesc'] = instance.tailleDesc;
  val['recolteDesc'] = instance.recolteDesc;
  val['tailleMonth'] = instance.tailleMonth;
  val['rusticity'] = _$RusticityEnumMap[instance.rusticity];
  writeNotNull(
      'varieties', instance.varieties?.map((e) => e.toJson()).toList());
  writeNotNull('sickness', instance.sickness?.map((e) => e.toJson()).toList());
  writeNotNull('__typename', instance.$$typename);
  return val;
}

AllArbres$Query$Consts _$AllArbres$Query$ConstsFromJson(
        Map<String, dynamic> json) =>
    AllArbres$Query$Consts()..$$typename = json['__typename'] as String?;

Map<String, dynamic> _$AllArbres$Query$ConstsToJson(
    AllArbres$Query$Consts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.$$typename);
  return val;
}

AllArbres$Query _$AllArbres$QueryFromJson(Map<String, dynamic> json) =>
    AllArbres$Query()
      ..consts = (json['consts'] as List<dynamic>?)
          ?.map(
              (e) => AllArbres$Query$Consts.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AllArbres$QueryToJson(AllArbres$Query instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('consts', instance.consts?.map((e) => e.toJson()).toList());
  return val;
}

ArbreCFragMixin$Varieties _$ArbreCFragMixin$VarietiesFromJson(
        Map<String, dynamic> json) =>
    ArbreCFragMixin$Varieties()
      ..id = fromGraphQLIdToDartint(json['id'] as String)
      ..image = json['image'] as String
      ..label = json['label'] as String;

Map<String, dynamic> _$ArbreCFragMixin$VarietiesToJson(
    ArbreCFragMixin$Varieties instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  val['image'] = instance.image;
  val['label'] = instance.label;
  return val;
}

ArbreCFragMixin$Sickness _$ArbreCFragMixin$SicknessFromJson(
        Map<String, dynamic> json) =>
    ArbreCFragMixin$Sickness()
      ..id = fromGraphQLIdToDartint(json['id'] as String)
      ..label = json['label'] as String
      ..description = json['description'] as String;

Map<String, dynamic> _$ArbreCFragMixin$SicknessToJson(
    ArbreCFragMixin$Sickness instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  val['label'] = instance.label;
  val['description'] = instance.description;
  return val;
}

AllConsts$Query$Consts$LegumeConst _$AllConsts$Query$Consts$LegumeConstFromJson(
        Map<String, dynamic> json) =>
    AllConsts$Query$Consts$LegumeConst()
      ..id = fromGraphQLIdToDartint(json['id'] as String)
      ..label = json['label'] as String
      ..defaultBgColor = json['defaultBgColor'] as String
      ..baseHeight = (json['baseHeight'] as num).toDouble()
      ..baseWidth = (json['baseWidth'] as num).toDouble()
      ..image = json['image'] as String
      ..description = json['description'] as String
      ..exposition = $enumDecode(_$ExpositionEnumMap, json['exposition'],
          unknownValue: Exposition.artemisUnknown)
      ..$$typename = json['__typename'] as String?;

Map<String, dynamic> _$AllConsts$Query$Consts$LegumeConstToJson(
    AllConsts$Query$Consts$LegumeConst instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  val['label'] = instance.label;
  val['defaultBgColor'] = instance.defaultBgColor;
  val['baseHeight'] = instance.baseHeight;
  val['baseWidth'] = instance.baseWidth;
  val['image'] = instance.image;
  val['description'] = instance.description;
  val['exposition'] = _$ExpositionEnumMap[instance.exposition];
  writeNotNull('__typename', instance.$$typename);
  return val;
}

AllConsts$Query$Consts$ArbreConst _$AllConsts$Query$Consts$ArbreConstFromJson(
        Map<String, dynamic> json) =>
    AllConsts$Query$Consts$ArbreConst()
      ..id = fromGraphQLIdToDartint(json['id'] as String)
      ..baseHeight = (json['baseHeight'] as num).toDouble()
      ..label = json['label'] as String
      ..defaultBgColor = json['defaultBgColor'] as String
      ..baseWidth = (json['baseWidth'] as num).toDouble()
      ..description = json['description'] as String
      ..image = json['image'] as String
      ..advices =
          (json['advices'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..exposition = $enumDecode(_$ExpositionEnumMap, json['exposition'],
          unknownValue: Exposition.artemisUnknown)
      ..plantMonth = (json['plantMonth'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MonthEnumMap, e,
              unknownValue: Month.artemisUnknown))
          .toList()
      ..recolteMonth = (json['recolteMonth'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MonthEnumMap, e,
              unknownValue: Month.artemisUnknown))
          .toList()
      ..semisMonth = (json['semisMonth'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MonthEnumMap, e,
              unknownValue: Month.artemisUnknown))
          .toList()
      ..climatDesc = json['climatDesc'] as String
      ..tailleDesc = json['tailleDesc'] as String
      ..recolteDesc = json['recolteDesc'] as String
      ..tailleMonth =
          (json['tailleMonth'] as List<dynamic>).map((e) => e as int).toList()
      ..rusticity = $enumDecode(_$RusticityEnumMap, json['rusticity'],
          unknownValue: Rusticity.artemisUnknown)
      ..varieties = (json['varieties'] as List<dynamic>?)
          ?.map((e) =>
              ArbreCFragMixin$Varieties.fromJson(e as Map<String, dynamic>))
          .toList()
      ..sickness = (json['sickness'] as List<dynamic>?)
          ?.map((e) =>
              ArbreCFragMixin$Sickness.fromJson(e as Map<String, dynamic>))
          .toList()
      ..$$typename = json['__typename'] as String?;

Map<String, dynamic> _$AllConsts$Query$Consts$ArbreConstToJson(
    AllConsts$Query$Consts$ArbreConst instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  val['baseHeight'] = instance.baseHeight;
  val['label'] = instance.label;
  val['defaultBgColor'] = instance.defaultBgColor;
  val['baseWidth'] = instance.baseWidth;
  val['description'] = instance.description;
  val['image'] = instance.image;
  writeNotNull('advices', instance.advices);
  val['exposition'] = _$ExpositionEnumMap[instance.exposition];
  writeNotNull('plantMonth',
      instance.plantMonth?.map((e) => _$MonthEnumMap[e]).toList());
  writeNotNull('recolteMonth',
      instance.recolteMonth?.map((e) => _$MonthEnumMap[e]).toList());
  writeNotNull('semisMonth',
      instance.semisMonth?.map((e) => _$MonthEnumMap[e]).toList());
  val['climatDesc'] = instance.climatDesc;
  val['tailleDesc'] = instance.tailleDesc;
  val['recolteDesc'] = instance.recolteDesc;
  val['tailleMonth'] = instance.tailleMonth;
  val['rusticity'] = _$RusticityEnumMap[instance.rusticity];
  writeNotNull(
      'varieties', instance.varieties?.map((e) => e.toJson()).toList());
  writeNotNull('sickness', instance.sickness?.map((e) => e.toJson()).toList());
  writeNotNull('__typename', instance.$$typename);
  return val;
}

AllConsts$Query$Consts$AromatConst _$AllConsts$Query$Consts$AromatConstFromJson(
        Map<String, dynamic> json) =>
    AllConsts$Query$Consts$AromatConst()
      ..id = fromGraphQLIdToDartint(json['id'] as String)
      ..label = json['label'] as String
      ..defaultBgColor = json['defaultBgColor'] as String
      ..baseHeight = (json['baseHeight'] as num).toDouble()
      ..baseWidth = (json['baseWidth'] as num).toDouble()
      ..image = json['image'] as String
      ..description = json['description'] as String
      ..exposition = $enumDecode(_$ExpositionEnumMap, json['exposition'],
          unknownValue: Exposition.artemisUnknown)
      ..$$typename = json['__typename'] as String?;

Map<String, dynamic> _$AllConsts$Query$Consts$AromatConstToJson(
    AllConsts$Query$Consts$AromatConst instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  val['label'] = instance.label;
  val['defaultBgColor'] = instance.defaultBgColor;
  val['baseHeight'] = instance.baseHeight;
  val['baseWidth'] = instance.baseWidth;
  val['image'] = instance.image;
  val['description'] = instance.description;
  val['exposition'] = _$ExpositionEnumMap[instance.exposition];
  writeNotNull('__typename', instance.$$typename);
  return val;
}

AllConsts$Query$Consts _$AllConsts$Query$ConstsFromJson(
        Map<String, dynamic> json) =>
    AllConsts$Query$Consts()..$$typename = json['__typename'] as String?;

Map<String, dynamic> _$AllConsts$Query$ConstsToJson(
    AllConsts$Query$Consts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.$$typename);
  return val;
}

AllConsts$Query _$AllConsts$QueryFromJson(Map<String, dynamic> json) =>
    AllConsts$Query()
      ..consts = (json['consts'] as List<dynamic>?)
          ?.map(
              (e) => AllConsts$Query$Consts.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AllConsts$QueryToJson(AllConsts$Query instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('consts', instance.consts?.map((e) => e.toJson()).toList());
  return val;
}

Me$Query$Me _$Me$Query$MeFromJson(Map<String, dynamic> json) => Me$Query$Me()
  ..id = fromGraphQLIdToDartint(json['id'] as String)
  ..email = json['email'] as String
  ..pseudo = json['pseudo'] as String
  ..premium = json['premium'] as bool
  ..admin = json['admin'] as bool
  ..terrains = (json['terrains'] as List<dynamic>?)
      ?.map((e) => UserInfoMixin$Terrains.fromJson(e as Map<String, dynamic>))
      .toList()
  ..semis = (json['semis'] as List<dynamic>?)
      ?.map((e) => UserInfoMixin$Semis.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$Me$Query$MeToJson(Me$Query$Me instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  val['email'] = instance.email;
  val['pseudo'] = instance.pseudo;
  val['premium'] = instance.premium;
  val['admin'] = instance.admin;
  writeNotNull('terrains', instance.terrains?.map((e) => e.toJson()).toList());
  writeNotNull('semis', instance.semis?.map((e) => e.toJson()).toList());
  return val;
}

Me$Query _$Me$QueryFromJson(Map<String, dynamic> json) => Me$Query()
  ..me = json['me'] == null
      ? null
      : Me$Query$Me.fromJson(json['me'] as Map<String, dynamic>);

Map<String, dynamic> _$Me$QueryToJson(Me$Query instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('me', instance.me?.toJson());
  return val;
}

UserInfoMixin$Terrains$Placeables _$UserInfoMixin$Terrains$PlaceablesFromJson(
        Map<String, dynamic> json) =>
    UserInfoMixin$Terrains$Placeables()
      ..bgColor = json['bgColor'] as String
      ..subName = json['subName'] as String?
      ..label = json['label'] as String
      ..posY = (json['posY'] as num?)?.toDouble()
      ..posX = (json['posX'] as num?)?.toDouble()
      ..id = fromGraphQLIdToDartint(json['id'] as String)
      ..recolteDate =
          fromGraphQLDateTimeToDartDateTime(json['recolteDate'] as String)
      ..plantDate =
          fromGraphQLDateTimeToDartDateTime(json['plantDate'] as String)
      ..height = (json['height'] as num).toDouble()
      ..width = (json['width'] as num).toDouble()
      ..image = json['image'] as String?;

Map<String, dynamic> _$UserInfoMixin$Terrains$PlaceablesToJson(
    UserInfoMixin$Terrains$Placeables instance) {
  final val = <String, dynamic>{
    'bgColor': instance.bgColor,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subName', instance.subName);
  val['label'] = instance.label;
  writeNotNull('posY', instance.posY);
  writeNotNull('posX', instance.posX);
  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  writeNotNull(
      'recolteDate', fromDartDateTimeToGraphQLDateTime(instance.recolteDate));
  writeNotNull(
      'plantDate', fromDartDateTimeToGraphQLDateTime(instance.plantDate));
  val['height'] = instance.height;
  val['width'] = instance.width;
  writeNotNull('image', instance.image);
  return val;
}

UserInfoMixin$Terrains _$UserInfoMixin$TerrainsFromJson(
        Map<String, dynamic> json) =>
    UserInfoMixin$Terrains()
      ..id = fromGraphQLIdToDartint(json['id'] as String)
      ..height = (json['height'] as num).toDouble()
      ..bgColor = json['bgColor'] as String
      ..width = (json['width'] as num).toDouble()
      ..placeables = (json['placeables'] as List<dynamic>?)
          ?.map((e) => UserInfoMixin$Terrains$Placeables.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$UserInfoMixin$TerrainsToJson(
    UserInfoMixin$Terrains instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  val['height'] = instance.height;
  val['bgColor'] = instance.bgColor;
  val['width'] = instance.width;
  writeNotNull(
      'placeables', instance.placeables?.map((e) => e.toJson()).toList());
  return val;
}

UserInfoMixin$Semis$Elements _$UserInfoMixin$Semis$ElementsFromJson(
        Map<String, dynamic> json) =>
    UserInfoMixin$Semis$Elements()
      ..id = fromGraphQLIdToDartint(json['id'] as String)
      ..label = json['label'] as String
      ..recolteDate =
          fromGraphQLDateTimeToDartDateTime(json['recolteDate'] as String)
      ..plantDate =
          fromGraphQLDateTimeToDartDateTime(json['plantDate'] as String)
      ..posColumn = json['posColumn'] as int
      ..posRow = json['posRow'] as int
      ..image = json['image'] as String;

Map<String, dynamic> _$UserInfoMixin$Semis$ElementsToJson(
    UserInfoMixin$Semis$Elements instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  val['label'] = instance.label;
  writeNotNull(
      'recolteDate', fromDartDateTimeToGraphQLDateTime(instance.recolteDate));
  writeNotNull(
      'plantDate', fromDartDateTimeToGraphQLDateTime(instance.plantDate));
  val['posColumn'] = instance.posColumn;
  val['posRow'] = instance.posRow;
  val['image'] = instance.image;
  return val;
}

UserInfoMixin$Semis _$UserInfoMixin$SemisFromJson(Map<String, dynamic> json) =>
    UserInfoMixin$Semis()
      ..id = fromGraphQLIdToDartint(json['id'] as String)
      ..label = json['label'] as String
      ..column = json['column'] as int
      ..row = json['row'] as int
      ..elements = (json['elements'] as List<dynamic>)
          .map((e) =>
              UserInfoMixin$Semis$Elements.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$UserInfoMixin$SemisToJson(UserInfoMixin$Semis instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  val['label'] = instance.label;
  val['column'] = instance.column;
  val['row'] = instance.row;
  val['elements'] = instance.elements.map((e) => e.toJson()).toList();
  return val;
}

RemoveConstArguments _$RemoveConstArgumentsFromJson(
        Map<String, dynamic> json) =>
    RemoveConstArguments(
      id: json['id'] as int,
    );

Map<String, dynamic> _$RemoveConstArgumentsToJson(
        RemoveConstArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

AddConstArguments _$AddConstArgumentsFromJson(Map<String, dynamic> json) =>
    AddConstArguments(
      image:
          fromGraphQLUploadToDartMultipartFile(json['image'] as MultipartFile),
      constant: ConstInput.fromJson(json['constant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddConstArgumentsToJson(AddConstArguments instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('image', fromDartMultipartFileToGraphQLUpload(instance.image));
  val['constant'] = instance.constant.toJson();
  return val;
}

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

RegisterArguments _$RegisterArgumentsFromJson(Map<String, dynamic> json) =>
    RegisterArguments(
      password: json['password'] as String,
      pseudo: json['pseudo'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$RegisterArgumentsToJson(RegisterArguments instance) =>
    <String, dynamic>{
      'password': instance.password,
      'pseudo': instance.pseudo,
      'email': instance.email,
    };

AllAromatArguments _$AllAromatArgumentsFromJson(Map<String, dynamic> json) =>
    AllAromatArguments(
      numberInPage: json['numberInPage'] as int,
      pageNumber: json['pageNumber'] as int,
    );

Map<String, dynamic> _$AllAromatArgumentsToJson(AllAromatArguments instance) =>
    <String, dynamic>{
      'numberInPage': instance.numberInPage,
      'pageNumber': instance.pageNumber,
    };

AllLegumesArguments _$AllLegumesArgumentsFromJson(Map<String, dynamic> json) =>
    AllLegumesArguments(
      pageNumber: json['pageNumber'] as int,
      numberInPage: json['numberInPage'] as int,
    );

Map<String, dynamic> _$AllLegumesArgumentsToJson(
        AllLegumesArguments instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'numberInPage': instance.numberInPage,
    };

Kw$ConstArguments _$Kw$ConstArgumentsFromJson(Map<String, dynamic> json) =>
    Kw$ConstArguments(
      constId: json['constId'] as int,
    );

Map<String, dynamic> _$Kw$ConstArgumentsToJson(Kw$ConstArguments instance) =>
    <String, dynamic>{
      'constId': instance.constId,
    };

AllArbresArguments _$AllArbresArgumentsFromJson(Map<String, dynamic> json) =>
    AllArbresArguments(
      numberInPage: json['numberInPage'] as int,
      pageNumber: json['pageNumber'] as int,
    );

Map<String, dynamic> _$AllArbresArgumentsToJson(AllArbresArguments instance) =>
    <String, dynamic>{
      'numberInPage': instance.numberInPage,
      'pageNumber': instance.pageNumber,
    };

AllConstsArguments _$AllConstsArgumentsFromJson(Map<String, dynamic> json) =>
    AllConstsArguments(
      pageNumber: json['pageNumber'] as int,
      numberInPage: json['numberInPage'] as int,
    );

Map<String, dynamic> _$AllConstsArgumentsToJson(AllConstsArguments instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'numberInPage': instance.numberInPage,
    };

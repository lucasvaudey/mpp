// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Connection$Mutation$Connect$Token _$Connection$Mutation$Connect$TokenFromJson(
    Map<String, dynamic> json) {
  return Connection$Mutation$Connect$Token()
    ..access = json['access'] as String
    ..refresh = json['refresh'] as String;
}

Map<String, dynamic> _$Connection$Mutation$Connect$TokenToJson(
        Connection$Mutation$Connect$Token instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };

Connection$Mutation$Connect$Error _$Connection$Mutation$Connect$ErrorFromJson(
    Map<String, dynamic> json) {
  return Connection$Mutation$Connect$Error()
    ..label = json['label'] as String
    ..message = json['message'] as String;
}

Map<String, dynamic> _$Connection$Mutation$Connect$ErrorToJson(
        Connection$Mutation$Connect$Error instance) =>
    <String, dynamic>{
      'label': instance.label,
      'message': instance.message,
    };

Connection$Mutation$Connect$User$Terrains
    _$Connection$Mutation$Connect$User$TerrainsFromJson(
        Map<String, dynamic> json) {
  return Connection$Mutation$Connect$User$Terrains()
    ..id = fromGraphQLIdToDartint(json['id'] as String);
}

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
    Map<String, dynamic> json) {
  return Connection$Mutation$Connect$User()
    ..id = fromGraphQLIdToDartint(json['id'] as String)
    ..email = json['email'] as String
    ..pseudo = json['pseudo'] as String
    ..terrains = (json['terrains'] as List<dynamic>?)
        ?.map((e) => Connection$Mutation$Connect$User$Terrains.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

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
    Map<String, dynamic> json) {
  return Connection$Mutation$Connect()
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
}

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

Connection$Mutation _$Connection$MutationFromJson(Map<String, dynamic> json) {
  return Connection$Mutation()
    ..connect = Connection$Mutation$Connect.fromJson(
        json['connect'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Connection$MutationToJson(
        Connection$Mutation instance) =>
    <String, dynamic>{
      'connect': instance.connect.toJson(),
    };

Me$Query$Me$User$Terrains$Legumes$Notifs
    _$Me$Query$Me$User$Terrains$Legumes$NotifsFromJson(
        Map<String, dynamic> json) {
  return Me$Query$Me$User$Terrains$Legumes$Notifs()
    ..id = fromGraphQLIdToDartint(json['id'] as String)
    ..createdAt = fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
    ..done = json['done'] as bool
    ..notifRappel = fromGraphQLListNullableDateTimeToDartListNullableDateTime(
        json['notifRappel'] as List<DateTime>?);
}

Map<String, dynamic> _$Me$Query$Me$User$Terrains$Legumes$NotifsToJson(
    Me$Query$Me$User$Terrains$Legumes$Notifs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  writeNotNull(
      'createdAt', fromDartDateTimeToGraphQLDateTime(instance.createdAt));
  val['done'] = instance.done;
  writeNotNull(
      'notifRappel',
      fromDartListNullableDateTimeToGraphQLListNullableDateTime(
          instance.notifRappel));
  return val;
}

Me$Query$Me$User$Terrains$Legumes _$Me$Query$Me$User$Terrains$LegumesFromJson(
    Map<String, dynamic> json) {
  return Me$Query$Me$User$Terrains$Legumes()
    ..bgColor = json['bgColor'] as String
    ..subName = json['subName'] as String?
    ..label = json['label'] as String
    ..posY = (json['posY'] as num?)?.toDouble()
    ..posX = (json['posX'] as num?)?.toDouble()
    ..id = fromGraphQLIdToDartint(json['id'] as String)
    ..recolteDate =
        fromGraphQLDateTimeToDartDateTime(json['recolteDate'] as String)
    ..notifs = (json['notifs'] as List<dynamic>?)
        ?.map((e) => Me$Query$Me$User$Terrains$Legumes$Notifs.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..plantDate = fromGraphQLDateTimeNullableToDartDateTimeNullable(
        json['plantDate'] as String?)
    ..height = (json['height'] as num).toDouble()
    ..width = (json['width'] as num).toDouble()
    ..image = json['image'] as String?;
}

Map<String, dynamic> _$Me$Query$Me$User$Terrains$LegumesToJson(
    Me$Query$Me$User$Terrains$Legumes instance) {
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
  writeNotNull('notifs', instance.notifs?.map((e) => e.toJson()).toList());
  writeNotNull('plantDate',
      fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.plantDate));
  val['height'] = instance.height;
  val['width'] = instance.width;
  writeNotNull('image', instance.image);
  return val;
}

Me$Query$Me$User$Terrains _$Me$Query$Me$User$TerrainsFromJson(
    Map<String, dynamic> json) {
  return Me$Query$Me$User$Terrains()
    ..id = fromGraphQLIdToDartint(json['id'] as String)
    ..height = (json['height'] as num).toDouble()
    ..bgColor = json['bgColor'] as String
    ..width = (json['width'] as num).toDouble()
    ..legumes = (json['legumes'] as List<dynamic>?)
        ?.map((e) => Me$Query$Me$User$Terrains$Legumes.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Me$Query$Me$User$TerrainsToJson(
    Me$Query$Me$User$Terrains instance) {
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
  writeNotNull('legumes', instance.legumes?.map((e) => e.toJson()).toList());
  return val;
}

Me$Query$Me$User$Semis$Elements _$Me$Query$Me$User$Semis$ElementsFromJson(
    Map<String, dynamic> json) {
  return Me$Query$Me$User$Semis$Elements()
    ..id = fromGraphQLIdToDartint(json['id'] as String)
    ..label = json['label'] as String
    ..recolteDate =
        fromGraphQLDateTimeToDartDateTime(json['recolteDate'] as String)
    ..plantDate = fromGraphQLDateTimeToDartDateTime(json['plantDate'] as String)
    ..posColumn = json['posColumn'] as int
    ..posRow = json['posRow'] as int
    ..image = json['image'] as String;
}

Map<String, dynamic> _$Me$Query$Me$User$Semis$ElementsToJson(
    Me$Query$Me$User$Semis$Elements instance) {
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

Me$Query$Me$User$Semis _$Me$Query$Me$User$SemisFromJson(
    Map<String, dynamic> json) {
  return Me$Query$Me$User$Semis()
    ..id = fromGraphQLIdToDartint(json['id'] as String)
    ..label = json['label'] as String
    ..column = json['column'] as int
    ..row = json['row'] as int
    ..elements = (json['elements'] as List<dynamic>)
        .map((e) =>
            Me$Query$Me$User$Semis$Elements.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Me$Query$Me$User$SemisToJson(
    Me$Query$Me$User$Semis instance) {
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

Me$Query$Me$User$Pot _$Me$Query$Me$User$PotFromJson(Map<String, dynamic> json) {
  return Me$Query$Me$User$Pot()
    ..id = json['id'] as int
    ..name = json['name'] as String;
}

Map<String, dynamic> _$Me$Query$Me$User$PotToJson(
        Me$Query$Me$User$Pot instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Me$Query$Me$User _$Me$Query$Me$UserFromJson(Map<String, dynamic> json) {
  return Me$Query$Me$User()
    ..id = fromGraphQLIdToDartint(json['id'] as String)
    ..email = json['email'] as String
    ..pseudo = json['pseudo'] as String
    ..premium = json['premium'] as bool
    ..admin = json['admin'] as bool
    ..terrains = (json['terrains'] as List<dynamic>?)
        ?.map((e) =>
            Me$Query$Me$User$Terrains.fromJson(e as Map<String, dynamic>))
        .toList()
    ..semis = (json['semis'] as List<dynamic>?)
        ?.map((e) => Me$Query$Me$User$Semis.fromJson(e as Map<String, dynamic>))
        .toList()
    ..pot = (json['pot'] as List<dynamic>?)
        ?.map((e) => Me$Query$Me$User$Pot.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Me$Query$Me$UserToJson(Me$Query$Me$User instance) {
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
  writeNotNull('pot', instance.pot?.map((e) => e.toJson()).toList());
  return val;
}

Me$Query$Me _$Me$Query$MeFromJson(Map<String, dynamic> json) {
  return Me$Query$Me()
    ..user = json['user'] == null
        ? null
        : Me$Query$Me$User.fromJson(json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Me$Query$MeToJson(Me$Query$Me instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user', instance.user?.toJson());
  return val;
}

Me$Query _$Me$QueryFromJson(Map<String, dynamic> json) {
  return Me$Query()
    ..me = Me$Query$Me.fromJson(json['me'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Me$QueryToJson(Me$Query instance) => <String, dynamic>{
      'me': instance.me.toJson(),
    };

Register$Mutation$Register$Token _$Register$Mutation$Register$TokenFromJson(
    Map<String, dynamic> json) {
  return Register$Mutation$Register$Token()
    ..access = json['access'] as String
    ..refresh = json['refresh'] as String;
}

Map<String, dynamic> _$Register$Mutation$Register$TokenToJson(
        Register$Mutation$Register$Token instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };

Register$Mutation$Register$Error _$Register$Mutation$Register$ErrorFromJson(
    Map<String, dynamic> json) {
  return Register$Mutation$Register$Error()
    ..label = json['label'] as String
    ..message = json['message'] as String;
}

Map<String, dynamic> _$Register$Mutation$Register$ErrorToJson(
        Register$Mutation$Register$Error instance) =>
    <String, dynamic>{
      'label': instance.label,
      'message': instance.message,
    };

Register$Mutation$Register$User _$Register$Mutation$Register$UserFromJson(
    Map<String, dynamic> json) {
  return Register$Mutation$Register$User()
    ..id = fromGraphQLIdToDartint(json['id'] as String);
}

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
    Map<String, dynamic> json) {
  return Register$Mutation$Register()
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
}

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

Register$Mutation _$Register$MutationFromJson(Map<String, dynamic> json) {
  return Register$Mutation()
    ..register = Register$Mutation$Register.fromJson(
        json['register'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Register$MutationToJson(Register$Mutation instance) =>
    <String, dynamic>{
      'register': instance.register.toJson(),
    };

AddConst$Mutation _$AddConst$MutationFromJson(Map<String, dynamic> json) {
  return AddConst$Mutation()..addConst = json['addConst'] as bool;
}

Map<String, dynamic> _$AddConst$MutationToJson(AddConst$Mutation instance) =>
    <String, dynamic>{
      'addConst': instance.addConst,
    };

ConstInput _$ConstInputFromJson(Map<String, dynamic> json) {
  return ConstInput(
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
}

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

LegumeConstInput _$LegumeConstInputFromJson(Map<String, dynamic> json) {
  return LegumeConstInput(
    label: json['label'] as String,
    defaultBgColor: json['defaultBgColor'] as String,
    baseHeight: (json['baseHeight'] as num).toDouble(),
    baseWidth: (json['baseWidth'] as num).toDouble(),
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$LegumeConstInputToJson(LegumeConstInput instance) =>
    <String, dynamic>{
      'label': instance.label,
      'defaultBgColor': instance.defaultBgColor,
      'baseHeight': instance.baseHeight,
      'baseWidth': instance.baseWidth,
      'image': instance.image,
    };

ArbreConstInput _$ArbreConstInputFromJson(Map<String, dynamic> json) {
  return ArbreConstInput(
    label: json['label'] as String,
    defaultBgColor: json['defaultBgColor'] as String,
    baseHeight: (json['baseHeight'] as num).toDouble(),
    baseWidth: (json['baseWidth'] as num).toDouble(),
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$ArbreConstInputToJson(ArbreConstInput instance) =>
    <String, dynamic>{
      'label': instance.label,
      'defaultBgColor': instance.defaultBgColor,
      'baseHeight': instance.baseHeight,
      'baseWidth': instance.baseWidth,
      'image': instance.image,
    };

AromatConstInput _$AromatConstInputFromJson(Map<String, dynamic> json) {
  return AromatConstInput(
    label: json['label'] as String,
    defaultBgColor: json['defaultBgColor'] as String,
    baseHeight: (json['baseHeight'] as num).toDouble(),
    baseWidth: (json['baseWidth'] as num).toDouble(),
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$AromatConstInputToJson(AromatConstInput instance) =>
    <String, dynamic>{
      'label': instance.label,
      'defaultBgColor': instance.defaultBgColor,
      'baseHeight': instance.baseHeight,
      'baseWidth': instance.baseWidth,
      'image': instance.image,
    };

RemoveConst$Mutation _$RemoveConst$MutationFromJson(Map<String, dynamic> json) {
  return RemoveConst$Mutation()..removeConst = json['removeConst'] as bool;
}

Map<String, dynamic> _$RemoveConst$MutationToJson(
        RemoveConst$Mutation instance) =>
    <String, dynamic>{
      'removeConst': instance.removeConst,
    };

AllConsts$Query$Consts$LegumeConst _$AllConsts$Query$Consts$LegumeConstFromJson(
    Map<String, dynamic> json) {
  return AllConsts$Query$Consts$LegumeConst()
    ..$$typename = json['__typename'] as String?
    ..id = fromGraphQLIdToDartint(json['id'] as String)
    ..label = json['label'] as String
    ..defaultBgColor = json['defaultBgColor'] as String
    ..baseHeight = (json['baseHeight'] as num).toDouble()
    ..baseWidth = (json['baseWidth'] as num).toDouble()
    ..image = json['image'] as String
    ..description = json['description'] as String?;
}

Map<String, dynamic> _$AllConsts$Query$Consts$LegumeConstToJson(
    AllConsts$Query$Consts$LegumeConst instance) {
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
  writeNotNull('description', instance.description);
  return val;
}

AllConsts$Query$Consts$ArbreConst _$AllConsts$Query$Consts$ArbreConstFromJson(
    Map<String, dynamic> json) {
  return AllConsts$Query$Consts$ArbreConst()
    ..$$typename = json['__typename'] as String?
    ..id = fromGraphQLIdToDartint(json['id'] as String)
    ..baseHeight = (json['baseHeight'] as num).toDouble()
    ..label = json['label'] as String
    ..defaultBgColor = json['defaultBgColor'] as String
    ..baseWidth = (json['baseWidth'] as num).toDouble()
    ..description = json['description'] as String?
    ..image = json['image'] as String
    ..fruitName = json['fruitName'] as String?;
}

Map<String, dynamic> _$AllConsts$Query$Consts$ArbreConstToJson(
    AllConsts$Query$Consts$ArbreConst instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.$$typename);
  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  val['baseHeight'] = instance.baseHeight;
  val['label'] = instance.label;
  val['defaultBgColor'] = instance.defaultBgColor;
  val['baseWidth'] = instance.baseWidth;
  writeNotNull('description', instance.description);
  val['image'] = instance.image;
  writeNotNull('fruitName', instance.fruitName);
  return val;
}

AllConsts$Query$Consts$AromatConst _$AllConsts$Query$Consts$AromatConstFromJson(
    Map<String, dynamic> json) {
  return AllConsts$Query$Consts$AromatConst()
    ..$$typename = json['__typename'] as String?
    ..id = fromGraphQLIdToDartint(json['id'] as String)
    ..label = json['label'] as String
    ..defaultBgColor = json['defaultBgColor'] as String
    ..baseHeight = (json['baseHeight'] as num).toDouble()
    ..baseWidth = (json['baseWidth'] as num).toDouble()
    ..image = json['image'] as String
    ..description = json['description'] as String?
    ..taille = json['taille'] as String?;
}

Map<String, dynamic> _$AllConsts$Query$Consts$AromatConstToJson(
    AllConsts$Query$Consts$AromatConst instance) {
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
  writeNotNull('description', instance.description);
  writeNotNull('taille', instance.taille);
  return val;
}

AllConsts$Query$Consts _$AllConsts$Query$ConstsFromJson(
    Map<String, dynamic> json) {
  return AllConsts$Query$Consts()..$$typename = json['__typename'] as String?;
}

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

AllConsts$Query _$AllConsts$QueryFromJson(Map<String, dynamic> json) {
  return AllConsts$Query()
    ..consts = (json['consts'] as List<dynamic>?)
        ?.map((e) => AllConsts$Query$Consts.fromJson(e as Map<String, dynamic>))
        .toList();
}

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

Kw$Const$Query$Kw$const$LegumeConst
    _$Kw$Const$Query$Kw$const$LegumeConstFromJson(Map<String, dynamic> json) {
  return Kw$Const$Query$Kw$const$LegumeConst()
    ..$$typename = json['__typename'] as String?
    ..description = json['description'] as String?
    ..label = json['label'] as String
    ..defaultBgColor = json['defaultBgColor'] as String
    ..baseHeight = (json['baseHeight'] as num).toDouble()
    ..baseWidth = (json['baseWidth'] as num).toDouble()
    ..image = json['image'] as String
    ..id = fromGraphQLIdToDartint(json['id'] as String);
}

Map<String, dynamic> _$Kw$Const$Query$Kw$const$LegumeConstToJson(
    Kw$Const$Query$Kw$const$LegumeConst instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.$$typename);
  writeNotNull('description', instance.description);
  val['label'] = instance.label;
  val['defaultBgColor'] = instance.defaultBgColor;
  val['baseHeight'] = instance.baseHeight;
  val['baseWidth'] = instance.baseWidth;
  val['image'] = instance.image;
  writeNotNull('id', fromDartintToGraphQLId(instance.id));
  return val;
}

Kw$Const$Query$Kw$const$ArbreConst _$Kw$Const$Query$Kw$const$ArbreConstFromJson(
    Map<String, dynamic> json) {
  return Kw$Const$Query$Kw$const$ArbreConst()
    ..$$typename = json['__typename'] as String?
    ..id = fromGraphQLIdToDartint(json['id'] as String)
    ..label = json['label'] as String
    ..defaultBgColor = json['defaultBgColor'] as String
    ..baseHeight = (json['baseHeight'] as num).toDouble()
    ..baseWidth = (json['baseWidth'] as num).toDouble()
    ..image = json['image'] as String
    ..description = json['description'] as String?
    ..fruitName = json['fruitName'] as String?;
}

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
  writeNotNull('description', instance.description);
  writeNotNull('fruitName', instance.fruitName);
  return val;
}

Kw$Const$Query$Kw$const$AromatConst
    _$Kw$Const$Query$Kw$const$AromatConstFromJson(Map<String, dynamic> json) {
  return Kw$Const$Query$Kw$const$AromatConst()
    ..$$typename = json['__typename'] as String?
    ..label = json['label'] as String
    ..id = fromGraphQLIdToDartint(json['id'] as String)
    ..defaultBgColor = json['defaultBgColor'] as String
    ..baseHeight = (json['baseHeight'] as num).toDouble()
    ..baseWidth = (json['baseWidth'] as num).toDouble()
    ..image = json['image'] as String
    ..description = json['description'] as String?
    ..taille = json['taille'] as String?;
}

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
  writeNotNull('description', instance.description);
  writeNotNull('taille', instance.taille);
  return val;
}

Kw$Const$Query$Kw$const _$Kw$Const$Query$Kw$constFromJson(
    Map<String, dynamic> json) {
  return Kw$Const$Query$Kw$const()..$$typename = json['__typename'] as String?;
}

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

Kw$Const$Query _$Kw$Const$QueryFromJson(Map<String, dynamic> json) {
  return Kw$Const$Query()
    ..kw$const = json['const'] == null
        ? null
        : Kw$Const$Query$Kw$const.fromJson(
            json['const'] as Map<String, dynamic>);
}

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

RegisterArguments _$RegisterArgumentsFromJson(Map<String, dynamic> json) {
  return RegisterArguments(
    password: json['password'] as String,
    pseudo: json['pseudo'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$RegisterArgumentsToJson(RegisterArguments instance) =>
    <String, dynamic>{
      'password': instance.password,
      'pseudo': instance.pseudo,
      'email': instance.email,
    };

AddConstArguments _$AddConstArgumentsFromJson(Map<String, dynamic> json) {
  return AddConstArguments(
    constant: ConstInput.fromJson(json['constant'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AddConstArgumentsToJson(AddConstArguments instance) =>
    <String, dynamic>{
      'constant': instance.constant.toJson(),
    };

RemoveConstArguments _$RemoveConstArgumentsFromJson(Map<String, dynamic> json) {
  return RemoveConstArguments(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$RemoveConstArgumentsToJson(
        RemoveConstArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

AllConstsArguments _$AllConstsArgumentsFromJson(Map<String, dynamic> json) {
  return AllConstsArguments(
    pageNumber: json['pageNumber'] as int,
    numberInPage: json['numberInPage'] as int,
  );
}

Map<String, dynamic> _$AllConstsArgumentsToJson(AllConstsArguments instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'numberInPage': instance.numberInPage,
    };

Kw$ConstArguments _$Kw$ConstArgumentsFromJson(Map<String, dynamic> json) {
  return Kw$ConstArguments(
    constId: json['constId'] as int,
  );
}

Map<String, dynamic> _$Kw$ConstArgumentsToJson(Kw$ConstArguments instance) =>
    <String, dynamic>{
      'constId': instance.constId,
    };

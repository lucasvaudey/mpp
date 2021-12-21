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
  return Connection$Mutation$Connect$User$Terrains()..id = json['id'] as String;
}

Map<String, dynamic> _$Connection$Mutation$Connect$User$TerrainsToJson(
        Connection$Mutation$Connect$User$Terrains instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Connection$Mutation$Connect$User _$Connection$Mutation$Connect$UserFromJson(
    Map<String, dynamic> json) {
  return Connection$Mutation$Connect$User()
    ..id = json['id'] as String
    ..email = json['email'] as String
    ..pseudo = json['pseudo'] as String
    ..terrains = (json['terrains'] as List<dynamic>?)
        ?.map((e) => Connection$Mutation$Connect$User$Terrains.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Connection$Mutation$Connect$UserToJson(
    Connection$Mutation$Connect$User instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'email': instance.email,
    'pseudo': instance.pseudo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

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
    ..id = json['id'] as String
    ..createdAt = fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
    ..done = json['done'] as bool
    ..notifRappel = fromGraphQLListNullableDateTimeToDartListNullableDateTime(
        json['notifRappel'] as List<DateTime>?);
}

Map<String, dynamic> _$Me$Query$Me$User$Terrains$Legumes$NotifsToJson(
    Me$Query$Me$User$Terrains$Legumes$Notifs instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

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
    ..id = json['id'] as String
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
  val['id'] = instance.id;
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
    ..id = json['id'] as String
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
  final val = <String, dynamic>{
    'id': instance.id,
    'height': instance.height,
    'bgColor': instance.bgColor,
    'width': instance.width,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('legumes', instance.legumes?.map((e) => e.toJson()).toList());
  return val;
}

Me$Query$Me$User$Semis$Elements _$Me$Query$Me$User$Semis$ElementsFromJson(
    Map<String, dynamic> json) {
  return Me$Query$Me$User$Semis$Elements()
    ..id = json['id'] as String
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
  final val = <String, dynamic>{
    'id': instance.id,
    'label': instance.label,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

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
    ..id = json['id'] as String
    ..label = json['label'] as String
    ..column = json['column'] as int
    ..row = json['row'] as int
    ..elements = (json['elements'] as List<dynamic>)
        .map((e) =>
            Me$Query$Me$User$Semis$Elements.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Me$Query$Me$User$SemisToJson(
        Me$Query$Me$User$Semis instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'column': instance.column,
      'row': instance.row,
      'elements': instance.elements.map((e) => e.toJson()).toList(),
    };

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
    ..id = json['id'] as String
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
  final val = <String, dynamic>{
    'id': instance.id,
    'email': instance.email,
    'pseudo': instance.pseudo,
    'premium': instance.premium,
    'admin': instance.admin,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

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
  return Register$Mutation$Register$User()..id = json['id'] as String;
}

Map<String, dynamic> _$Register$Mutation$Register$UserToJson(
        Register$Mutation$Register$User instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

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

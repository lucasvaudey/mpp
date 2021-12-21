// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      id: fields[0] as int,
      pseudo: fields[1] as String,
      email: fields[2] as String,
      token: fields[3] as Token,
      terrains: (fields[6] as List?)?.cast<Terrain>(),
      admin: fields[5] as bool,
      premium: fields[4] as bool,
      semis: (fields[8] as List?)?.cast<Semis>(),
      pots: (fields[7] as List?)?.cast<Pot>(),
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.pseudo)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.token)
      ..writeByte(4)
      ..write(obj.premium)
      ..writeByte(5)
      ..write(obj.admin)
      ..writeByte(6)
      ..write(obj.terrains)
      ..writeByte(7)
      ..write(obj.pots)
      ..writeByte(8)
      ..write(obj.semis);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as int,
    pseudo: json['pseudo'] as String,
    email: json['email'] as String,
    token: Token.fromJson(json['token'] as Map<String, dynamic>),
    terrains: (json['terrains'] as List<dynamic>?)
        ?.map((e) => Terrain.fromJson(e as Map<String, dynamic>))
        .toList(),
    admin: json['admin'] as bool,
    premium: json['premium'] as bool,
    semis: (json['semis'] as List<dynamic>?)
        ?.map((e) => Semis.fromJson(e as Map<String, dynamic>))
        .toList(),
    pots: (json['pots'] as List<dynamic>?)
        ?.map((e) => Pot.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'pseudo': instance.pseudo,
    'email': instance.email,
    'token': instance.token,
    'premium': instance.premium,
    'admin': instance.admin,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('terrains', instance.terrains);
  writeNotNull('pots', instance.pots);
  writeNotNull('semis', instance.semis);
  return val;
}

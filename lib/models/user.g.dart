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
      terrains: (fields[4] as List?)?.cast<Terrain>(),
      admin: fields[3] as bool,
      premium: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.pseudo)
      ..writeByte(2)
      ..write(obj.premium)
      ..writeByte(3)
      ..write(obj.admin)
      ..writeByte(4)
      ..write(obj.terrains);
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

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      pseudo: json['pseudo'] as String,
      terrains: (json['terrains'] as List<dynamic>?)
          ?.map((e) => Terrain.fromJson(e as Map<String, dynamic>))
          .toList(),
      admin: json['admin'] as bool? ?? false,
      premium: json['premium'] as bool? ?? false,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'pseudo': instance.pseudo,
      'premium': instance.premium,
      'admin': instance.admin,
      'terrains': instance.terrains,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arbre_const.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ArbreConstAdapter extends TypeAdapter<ArbreConst> {
  @override
  final int typeId = 5;

  @override
  ArbreConst read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ArbreConst(
      id: fields[0] as dynamic,
      familyName: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ArbreConst obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.familyName)
      ..writeByte(0)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArbreConstAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArbreConst _$ArbreConstFromJson(Map<String, dynamic> json) {
  return ArbreConst(
    id: json['id'],
    familyName: json['familyName'] as String,
  );
}

Map<String, dynamic> _$ArbreConstToJson(ArbreConst instance) =>
    <String, dynamic>{
      'id': instance.id,
      'familyName': instance.familyName,
    };

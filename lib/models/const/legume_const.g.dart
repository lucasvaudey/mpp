// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legume_const.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LegumeConstAdapter extends TypeAdapter<LegumeConst> {
  @override
  final int typeId = 6;

  @override
  LegumeConst read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LegumeConst(
      id: fields[0] as dynamic,
      familyName: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LegumeConst obj) {
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
      other is LegumeConstAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LegumeConst _$LegumeConstFromJson(Map<String, dynamic> json) {
  return LegumeConst(
    id: json['id'],
    familyName: json['familyName'] as String,
  );
}

Map<String, dynamic> _$LegumeConstToJson(LegumeConst instance) =>
    <String, dynamic>{
      'id': instance.id,
      'familyName': instance.familyName,
    };

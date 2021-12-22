// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aromat_const.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AromatConstAdapter extends TypeAdapter<AromatConst> {
  @override
  final int typeId = 6;

  @override
  AromatConst read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AromatConst(
      id: fields[0] as dynamic,
      familyName: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AromatConst obj) {
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
      other is AromatConstAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AromatConst _$AromatConstFromJson(Map<String, dynamic> json) {
  return AromatConst(
    id: json['id'],
    familyName: json['familyName'] as String,
  );
}

Map<String, dynamic> _$AromatConstToJson(AromatConst instance) =>
    <String, dynamic>{
      'id': instance.id,
      'familyName': instance.familyName,
    };

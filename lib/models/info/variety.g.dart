// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variety.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VarietyAdapter extends TypeAdapter<Variety> {
  @override
  final int typeId = 8;

  @override
  Variety read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Variety(
      familyName: fields[14] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Variety obj) {
    writer
      ..writeByte(1)
      ..writeByte(14)
      ..write(obj.familyName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VarietyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variety _$VarietyFromJson(Map<String, dynamic> json) => Variety(
      familyName: json['familyName'] as String,
    );

Map<String, dynamic> _$VarietyToJson(Variety instance) => <String, dynamic>{
      'familyName': instance.familyName,
    };

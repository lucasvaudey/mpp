// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sickness.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SicknessAdapter extends TypeAdapter<Sickness> {
  @override
  final int typeId = 9;

  @override
  Sickness read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Sickness(
      familyName: fields[14] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Sickness obj) {
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
      other is SicknessAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sickness _$SicknessFromJson(Map<String, dynamic> json) {
  return Sickness(
    familyName: json['familyName'] as String,
  );
}

Map<String, dynamic> _$SicknessToJson(Sickness instance) => <String, dynamic>{
      'familyName': instance.familyName,
    };

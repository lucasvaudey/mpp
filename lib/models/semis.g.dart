// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'semis.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SemisAdapter extends TypeAdapter<Semis> {
  @override
  final int typeId = 3;

  @override
  Semis read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Semis(
      id: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Semis obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SemisAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Semis _$SemisFromJson(Map<String, dynamic> json) {
  return Semis(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$SemisToJson(Semis instance) => <String, dynamic>{
      'id': instance.id,
    };

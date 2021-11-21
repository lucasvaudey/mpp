// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pot.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PotAdapter extends TypeAdapter<Pot> {
  @override
  final int typeId = 2;

  @override
  Pot read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Pot(
      id: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Pot obj) {
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
      other is PotAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pot _$PotFromJson(Map<String, dynamic> json) {
  return Pot(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$PotToJson(Pot instance) => <String, dynamic>{
      'id': instance.id,
    };

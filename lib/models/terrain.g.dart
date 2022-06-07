// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terrain.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TerrainAdapter extends TypeAdapter<Terrain> {
  @override
  final int typeId = 1;

  @override
  Terrain read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Terrain(
      id: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Terrain obj) {
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
      other is TerrainAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Terrain _$TerrainFromJson(Map<String, dynamic> json) => Terrain(
      id: json['id'] as int,
    );

Map<String, dynamic> _$TerrainToJson(Terrain instance) => <String, dynamic>{
      'id': instance.id,
    };

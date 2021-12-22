// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'const_element.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConstElementAdapter extends TypeAdapter<ConstElement> {
  @override
  final int typeId = 7;

  @override
  ConstElement read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ConstElement(
      id: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ConstElement obj) {
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
      other is ConstElementAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConstElement _$ConstElementFromJson(Map<String, dynamic> json) {
  return ConstElement(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$ConstElementToJson(ConstElement instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

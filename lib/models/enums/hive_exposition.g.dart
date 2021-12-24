// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_exposition.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveExpositionAdapter extends TypeAdapter<HiveExposition> {
  @override
  final int typeId = 10;

  @override
  HiveExposition read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return HiveExposition.soleil;
      case 1:
        return HiveExposition.miOmbre;
      case 2:
        return HiveExposition.ombre;
      default:
        return HiveExposition.soleil;
    }
  }

  @override
  void write(BinaryWriter writer, HiveExposition obj) {
    switch (obj) {
      case HiveExposition.soleil:
        writer.writeByte(0);
        break;
      case HiveExposition.miOmbre:
        writer.writeByte(1);
        break;
      case HiveExposition.ombre:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveExpositionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

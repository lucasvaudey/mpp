// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveMonthAdapter extends TypeAdapter<HiveMonth> {
  @override
  final int typeId = 12;

  @override
  HiveMonth read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return HiveMonth.janvier;
      case 1:
        return HiveMonth.fevrier;
      case 2:
        return HiveMonth.mars;
      case 3:
        return HiveMonth.avril;
      case 4:
        return HiveMonth.mai;
      case 5:
        return HiveMonth.juin;
      case 6:
        return HiveMonth.juillet;
      case 7:
        return HiveMonth.aout;
      case 8:
        return HiveMonth.septembre;
      case 9:
        return HiveMonth.octobre;
      case 10:
        return HiveMonth.novembre;
      case 11:
        return HiveMonth.decembre;
      default:
        return HiveMonth.janvier;
    }
  }

  @override
  void write(BinaryWriter writer, HiveMonth obj) {
    switch (obj) {
      case HiveMonth.janvier:
        writer.writeByte(0);
        break;
      case HiveMonth.fevrier:
        writer.writeByte(1);
        break;
      case HiveMonth.mars:
        writer.writeByte(2);
        break;
      case HiveMonth.avril:
        writer.writeByte(3);
        break;
      case HiveMonth.mai:
        writer.writeByte(4);
        break;
      case HiveMonth.juin:
        writer.writeByte(5);
        break;
      case HiveMonth.juillet:
        writer.writeByte(6);
        break;
      case HiveMonth.aout:
        writer.writeByte(7);
        break;
      case HiveMonth.septembre:
        writer.writeByte(8);
        break;
      case HiveMonth.octobre:
        writer.writeByte(9);
        break;
      case HiveMonth.novembre:
        writer.writeByte(10);
        break;
      case HiveMonth.decembre:
        writer.writeByte(11);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveMonthAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

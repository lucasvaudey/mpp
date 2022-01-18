// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arbre_const.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ArbreConstAdapter extends TypeAdapter<ArbreConst> {
  @override
  final int typeId = 5;

  @override
  ArbreConst read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ArbreConst(
      id: fields[0] as int,
      baseHeight: fields[3] as double,
      baseWidth: fields[4] as double,
      defaultBgColor: fields[2] as String,
      description: fields[6] as String,
      image: fields[5] as String,
      label: fields[1] as String,
      exposition: fields[10] as HiveExposition,
      advices: (fields[7] as List?)?.cast<String>(),
      sickness: (fields[8] as List?)?.cast<Sickness>(),
      varieties: (fields[9] as List?)?.cast<Variety>(),
      plantMonth: (fields[11] as List?)?.cast<HiveMonth>(),
      semisMonth: (fields[12] as List?)?.cast<HiveMonth>(),
      recolteMonth: (fields[13] as List?)?.cast<HiveMonth>(),
      familyName: fields[14] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ArbreConst obj) {
    writer
      ..writeByte(15)
      ..writeByte(14)
      ..write(obj.familyName)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.label)
      ..writeByte(2)
      ..write(obj.defaultBgColor)
      ..writeByte(3)
      ..write(obj.baseHeight)
      ..writeByte(4)
      ..write(obj.baseWidth)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.description)
      ..writeByte(7)
      ..write(obj.advices)
      ..writeByte(8)
      ..write(obj.sickness)
      ..writeByte(9)
      ..write(obj.varieties)
      ..writeByte(10)
      ..write(obj.exposition)
      ..writeByte(11)
      ..write(obj.plantMonth)
      ..writeByte(12)
      ..write(obj.semisMonth)
      ..writeByte(13)
      ..write(obj.recolteMonth);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArbreConstAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArbreConst _$ArbreConstFromJson(Map<String, dynamic> json) {
  return ArbreConst(
    id: json['id'] as int,
    baseHeight: (json['baseHeight'] as num).toDouble(),
    baseWidth: (json['baseWidth'] as num).toDouble(),
    defaultBgColor: json['defaultBgColor'] as String,
    description: json['description'] as String,
    image: json['image'] as String,
    label: json['label'] as String,
    exposition: _$enumDecode(_$HiveExpositionEnumMap, json['exposition']),
    advices:
        (json['advices'] as List<dynamic>?)?.map((e) => e as String).toList(),
    sickness: (json['sickness'] as List<dynamic>?)
        ?.map((e) => Sickness.fromJson(e as Map<String, dynamic>))
        .toList(),
    varieties: (json['varieties'] as List<dynamic>?)
        ?.map((e) => Variety.fromJson(e as Map<String, dynamic>))
        .toList(),
    plantMonth: (json['plantMonth'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$HiveMonthEnumMap, e))
        .toList(),
    semisMonth: (json['semisMonth'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$HiveMonthEnumMap, e))
        .toList(),
    recolteMonth: (json['recolteMonth'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$HiveMonthEnumMap, e))
        .toList(),
    familyName: json['familyName'] as String,
  );
}

Map<String, dynamic> _$ArbreConstToJson(ArbreConst instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'label': instance.label,
    'defaultBgColor': instance.defaultBgColor,
    'baseHeight': instance.baseHeight,
    'baseWidth': instance.baseWidth,
    'image': instance.image,
    'description': instance.description,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('advices', instance.advices);
  writeNotNull('sickness', instance.sickness);
  writeNotNull('varieties', instance.varieties);
  val['exposition'] = _$HiveExpositionEnumMap[instance.exposition];
  writeNotNull('plantMonth',
      instance.plantMonth?.map((e) => _$HiveMonthEnumMap[e]).toList());
  writeNotNull('semisMonth',
      instance.semisMonth?.map((e) => _$HiveMonthEnumMap[e]).toList());
  writeNotNull('recolteMonth',
      instance.recolteMonth?.map((e) => _$HiveMonthEnumMap[e]).toList());
  val['familyName'] = instance.familyName;
  return val;
}

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$HiveExpositionEnumMap = {
  HiveExposition.soleil: 'soleil',
  HiveExposition.miOmbre: 'miOmbre',
  HiveExposition.ombre: 'ombre',
};

const _$HiveMonthEnumMap = {
  HiveMonth.janvier: 'janvier',
  HiveMonth.fevrier: 'fevrier',
  HiveMonth.mars: 'mars',
  HiveMonth.avril: 'avril',
  HiveMonth.mai: 'mai',
  HiveMonth.juin: 'juin',
  HiveMonth.juillet: 'juillet',
  HiveMonth.aout: 'aout',
  HiveMonth.septembre: 'septembre',
  HiveMonth.octobre: 'octobre',
  HiveMonth.novembre: 'novembre',
  HiveMonth.decembre: 'decembre',
};

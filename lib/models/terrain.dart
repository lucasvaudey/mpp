import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'terrain.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class Terrain {
  @HiveField(0)
  int id;

  Terrain({required this.id});

  factory Terrain.fromJson(Map<String, dynamic> json) =>
      _$TerrainFromJson(json);
  Map<String, dynamic> toJson() => _$TerrainToJson(this);
}

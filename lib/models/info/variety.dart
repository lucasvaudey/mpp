import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'variety.g.dart';

@JsonSerializable()
@HiveType(typeId: 8)
class Variety {
  @HiveField(14)
  String familyName;

  Variety({required this.familyName});

  factory Variety.fromJson(Map<String, dynamic> json) =>
      _$VarietyFromJson(json);
  Map<String, dynamic> toJson() => _$VarietyToJson(this);
}

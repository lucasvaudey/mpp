import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sickness.g.dart';

@HiveType(typeId: 9)
@JsonSerializable()
class Sickness {
  @HiveField(14)
  String familyName;

  Sickness({required this.familyName});

  factory Sickness.fromJson(Map<String, dynamic> json) =>
      _$SicknessFromJson(json);

  Map<String, dynamic> toJson() => _$SicknessToJson(this);
}

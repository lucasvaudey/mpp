import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pot.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class Pot {
  @HiveField(0)
  int id;

  Pot({required this.id});

  factory Pot.fromJson(Map<String, dynamic> json) => _$PotFromJson(json);
  Map<String, dynamic> toJson() => _$PotToJson(this);
}

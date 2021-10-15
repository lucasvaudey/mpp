import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'semis.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class Semis {
  @HiveField(0)
  int id;

  Semis({required this.id});

  factory Semis.fromJson(Map<String, dynamic> json) => _$SemisFromJson(json);
  Map<String, dynamic> toJson() => _$SemisToJson(this);
}

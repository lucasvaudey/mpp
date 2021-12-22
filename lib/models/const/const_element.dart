import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'const_element.g.dart';

@HiveType(typeId: 7)
@JsonSerializable()
class ConstElement {
  @HiveField(0)
  int id;

  ConstElement({required this.id});

  factory ConstElement.fromJson(Map<String, dynamic> json) =>
      _$ConstElementFromJson(json);
  Map<String, dynamic> toJson() => _$ConstElementToJson(this);
}

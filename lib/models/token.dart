import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@HiveType(typeId: 4)
@JsonSerializable()
class Token {
  @HiveField(0)
  String access;
  @HiveField(1)
  String refresh;

  Token({required this.access, required this.refresh});

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
  Map<String, dynamic> toJson() => _$TokenToJson(this);
}

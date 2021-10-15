import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mpp/models/terrain.dart';

part 'user.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class User {
  @HiveField(0)
  int id;

  @HiveField(1)
  String pseudo;

  @HiveField(2)
  bool premium = false;

  @HiveField(3)
  bool admin = false;

  @HiveField(4)
  List<Terrain>? terrains;

  User(
      {required this.id,
      required this.pseudo,
      this.terrains,
      this.admin = false,
      this.premium = false});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

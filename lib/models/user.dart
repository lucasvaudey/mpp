import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mpp/graphql/generated/graphql_api.graphql.dart';
import 'package:mpp/models/pot.dart';
import 'package:mpp/models/semis.dart';
import 'package:mpp/models/terrain.dart';
import 'package:mpp/models/token.dart';

part 'user.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class User {
  @HiveField(0)
  int id;

  @HiveField(1)
  String pseudo;

  @HiveField(2)
  String email;

  @HiveField(3)
  Token token;

  @HiveField(4)
  bool premium = false;

  @HiveField(5)
  bool admin = false;

  @HiveField(6)
  List<Terrain>? terrains;

  @HiveField(7)
  List<Pot>? pots;

  @HiveField(8)
  List<Semis>? semis;

  User(
      {required this.id,
      required this.pseudo,
      required this.email,
      required this.token,
      this.terrains,
      this.admin = false,
      this.premium = false,
      this.semis,
      this.pots});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  static User fromMeQuery(Me$Query$Me$User data, Token token) {
    //TODO: Parsing the terrains, etc
    return User(
      id: data.id,
      pseudo: data.pseudo,
      email: data.email,
      token: token,
      admin: data.admin,
      premium: data.premium,
    );
  }
}

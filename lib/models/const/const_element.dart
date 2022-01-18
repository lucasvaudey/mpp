import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/graphql/generated/graphql_api.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mpp/models/const/arbre_const.dart';
import 'package:mpp/models/const/aromat_const.dart';
import 'package:mpp/models/const/legume_const.dart';
import 'package:mpp/models/enums/hive_exposition.dart';
import 'package:mpp/models/enums/month.dart';
import 'package:mpp/models/info/sickness.dart';
import 'package:mpp/models/info/variety.dart';

part 'const_element.g.dart';

@HiveType(typeId: 7)
@JsonSerializable()
class ConstElement {
  @HiveField(0)
  int id;
  @HiveField(1)
  String label;
  //TODO: Changer ça en color
  @HiveField(2)
  String defaultBgColor;
  @HiveField(3)
  double baseHeight;
  @HiveField(4)
  double baseWidth;
  @HiveField(5)
  String image;
  @HiveField(6)
  String description;
  @HiveField(7)
  List<String>? advices;
  @HiveField(8)
  List<Sickness>? sickness;
  @HiveField(9)
  List<Variety>? varieties;
  @HiveField(10)
  HiveExposition exposition;
  @HiveField(11)
  List<HiveMonth>? plantMonth;
  @HiveField(12)
  List<HiveMonth>? semisMonth;
  @HiveField(13)
  List<HiveMonth>? recolteMonth;

  ConstElement({
    required this.id,
    required this.baseHeight,
    required this.baseWidth,
    required this.defaultBgColor,
    required this.description,
    required this.image,
    required this.label,
    required this.exposition,
    this.advices,
    this.sickness,
    this.varieties,
    this.plantMonth,
    this.semisMonth,
    this.recolteMonth,
  });

  factory ConstElement.fromJson(Map<String, dynamic> json) =>
      _$ConstElementFromJson(json);
  Map<String, dynamic> toJson() => _$ConstElementToJson(this);

  factory ConstElement.fromFrag(EquatableMixin constData) {
    if (constData is LegumeCFragMixin) {
      var data = constData as LegumeCFragMixin;
      return LegumeConst(
          id: data.id,
          baseHeight: data.baseHeight,
          baseWidth: data.baseWidth,
          defaultBgColor: data.defaultBgColor,
          description: data.description,
          image: data.image,
          label: data.label,
          exposition: data.exposition.hive,
          familyName: "Salut");
    }
    if (constData is ArbreCFragMixin) {
      var data = constData as ArbreCFragMixin;
      return ArbreConst(
          id: data.id,
          baseHeight: data.baseHeight,
          baseWidth: data.baseWidth,
          defaultBgColor: data.defaultBgColor,
          description: data.description,
          image: data.image,
          label: data.label,
          exposition: data.exposition.hive,
          familyName: "NC");
    } else {
      var data = constData as AromatCFragMixin;
      return AromatConst(
          id: data.id,
          baseHeight: data.baseHeight,
          baseWidth: data.baseWidth,
          defaultBgColor: data.defaultBgColor,
          description: data.description,
          image: data.image,
          label: data.label,
          exposition: data.exposition.hive,
          familyName: "NC");
    }
  }
}

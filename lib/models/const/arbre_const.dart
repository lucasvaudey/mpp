import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mpp/models/const/const_element.dart';
import 'package:mpp/graphql/generated/graphql_api.dart';
import 'package:mpp/models/enums/hive_exposition.dart';
import 'package:mpp/models/enums/month.dart';
import 'package:mpp/models/info/sickness.dart';
import 'package:mpp/models/info/variety.dart';

part 'arbre_const.g.dart';

@HiveType(typeId: 5)
@JsonSerializable()
class ArbreConst extends ConstElement {
  @HiveField(14)
  String familyName;

  ArbreConst(
      {required int id,
      required double baseHeight,
      required double baseWidth,
      required String defaultBgColor,
      required String description,
      required String image,
      required String label,
      required HiveExposition exposition,
      List<String>? advices,
      List<Sickness>? sickness,
      List<Variety>? varieties,
      List<HiveMonth>? plantMonth,
      List<HiveMonth>? semisMonth,
      List<HiveMonth>? recolteMonth,
      required this.familyName})
      : super(
          id: id,
          baseHeight: baseHeight,
          baseWidth: baseWidth,
          defaultBgColor: defaultBgColor,
          description: description,
          image: image,
          label: label,
          exposition: exposition,
          advices: advices,
          sickness: sickness,
          varieties: varieties,
          plantMonth: plantMonth,
          semisMonth: semisMonth,
          recolteMonth: recolteMonth,
        );

  factory ArbreConst.fromJson(Map<String, dynamic> json) =>
      _$ArbreConstFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ArbreConstToJson(this);

  ArbreConst fromFrag(ArbreCFragMixin data) {
    return ArbreConst(
        id: data.id,
        baseHeight: data.baseHeight,
        baseWidth: data.baseWidth,
        defaultBgColor: data.defaultBgColor,
        description: data.description,
        image: data.image,
        label: data.label,
        exposition: data.exposition.hive,
        familyName: "");
  }
}

import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mpp/models/const/const_element.dart';
import 'package:mpp/models/enums/hive_exposition.dart';
import 'package:mpp/models/info/sickness.dart';
import 'package:mpp/models/info/variety.dart';

part 'aromat_const.g.dart';

@HiveType(typeId: 6)
@JsonSerializable()
class AromatConst extends ConstElement {
  @HiveField(14)
  String familyName;

  AromatConst(
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
      List<int>? plantMonth,
      List<int>? semisMonth,
      List<int>? recolteMonth,
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

  factory AromatConst.fromJson(Map<String, dynamic> json) =>
      _$AromatConstFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$AromatConstToJson(this);
}

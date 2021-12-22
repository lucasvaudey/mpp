import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mpp/models/const/const_element.dart';

part 'legume_const.g.dart';

@HiveType(typeId: 6)
@JsonSerializable()
class LegumeConst extends ConstElement {
  @HiveField(1)
  String familyName;

  LegumeConst({id, required this.familyName}) : super(id: id);

  factory LegumeConst.fromJson(Map<String, dynamic> json) =>
      _$LegumeConstFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$LegumeConstToJson(this);
}

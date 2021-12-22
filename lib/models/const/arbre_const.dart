import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mpp/models/const/const_element.dart';

part 'arbre_const.g.dart';

@HiveType(typeId: 5)
@JsonSerializable()
class ArbreConst extends ConstElement {
  @HiveField(1)
  String familyName;

  ArbreConst({id, required this.familyName}) : super(id: id);

  factory ArbreConst.fromJson(Map<String, dynamic> json) =>
      _$ArbreConstFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ArbreConstToJson(this);
}

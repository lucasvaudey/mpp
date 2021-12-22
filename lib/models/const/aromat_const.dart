import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mpp/models/const/const_element.dart';

part 'aromat_const.g.dart';

@HiveType(typeId: 6)
@JsonSerializable()
class AromatConst extends ConstElement {
  @HiveField(1)
  String familyName;

  AromatConst({id, required this.familyName}) : super(id: id);

  factory AromatConst.fromJson(Map<String, dynamic> json) =>
      _$AromatConstFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$AromatConstToJson(this);
}

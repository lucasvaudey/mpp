import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/app.dart';
import 'package:mpp/models/const/arbre_const.dart';
import 'package:mpp/models/const/aromat_const.dart';
import 'package:mpp/models/const/const_element.dart';
import 'package:mpp/models/const/legume_const.dart';
import 'package:mpp/models/enums/hive_exposition.dart';
import 'package:mpp/models/enums/hive_month.dart';
import 'package:mpp/models/info/sickness.dart';
import 'package:mpp/models/pot.dart';
import 'package:mpp/models/semis.dart';
import 'package:mpp/models/terrain.dart';
import 'package:mpp/models/token.dart';
import 'package:mpp/models/user.dart';

void main() async {
  await Hive.initFlutter();
  Hive
    ..registerAdapter(UserAdapter())
    ..registerAdapter(TerrainAdapter())
    ..registerAdapter(SemisAdapter())
    ..registerAdapter(PotAdapter())
    ..registerAdapter(SicknessAdapter())
    ..registerAdapter(HiveExpositionAdapter())
    ..registerAdapter(ArbreConstAdapter())
    ..registerAdapter(LegumeConstAdapter())
    ..registerAdapter(AromatConstAdapter())
    ..registerAdapter(HiveMonthAdapter())
    ..registerAdapter(TokenAdapter());
  await Hive.openBox<User>("user");
  await Hive.openBox<ConstElement>("const_element");
  runApp(const App());
}

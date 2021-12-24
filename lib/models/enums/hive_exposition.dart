import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/graphql/generated/graphql_api.dart';

part 'hive_exposition.g.dart';

@HiveType(typeId: 10)
enum HiveExposition {
  @HiveField(0)
  soleil,
  @HiveField(1)
  miOmbre,
  @HiveField(2)
  ombre
}

extension HiveExpostionGql on HiveExposition {
  Exposition get gql {
    switch (this) {
      case HiveExposition.soleil:
        return Exposition.soleil;
      case HiveExposition.miOmbre:
        return Exposition.miOmbre;
      case HiveExposition.ombre:
        return Exposition.ombre;
    }
  }
}

extension ExpostionHive on Exposition {
  HiveExposition get hive {
    switch (this) {
      case Exposition.soleil:
        return HiveExposition.soleil;
      case Exposition.ombre:
        return HiveExposition.ombre;
      case Exposition.miOmbre:
        return HiveExposition.miOmbre;
      case Exposition.artemisUnknown:
        return HiveExposition.soleil;
    }
  }
}

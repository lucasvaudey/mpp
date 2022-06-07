import 'package:hive_flutter/hive_flutter.dart';
import 'package:mpp/graphql/generated/graphql_api.dart';

part 'hive_month.g.dart';

@HiveType(typeId: 12)
enum HiveMonth {
  @HiveField(0)
  janvier,
  @HiveField(1)
  fevrier,
  @HiveField(2)
  mars,
  @HiveField(3)
  avril,
  @HiveField(4)
  mai,
  @HiveField(5)
  juin,
  @HiveField(6)
  juillet,
  @HiveField(7)
  aout,
  @HiveField(8)
  septembre,
  @HiveField(9)
  octobre,
  @HiveField(10)
  novembre,
  @HiveField(11)
  decembre,
}

//TODO: extension quand traduction OK

extension HiveMonthGql on HiveMonth {
  Month get gql {
    switch (this) {
      case HiveMonth.janvier:
        return Month.janvier;
      case HiveMonth.fevrier:
        return Month.fevrier;
      case HiveMonth.mars:
        return Month.mars;
      case HiveMonth.avril:
        return Month.avril;
      case HiveMonth.mai:
        return Month.mai;
      case HiveMonth.juin:
        return Month.juin;
      case HiveMonth.juillet:
        return Month.juillet;
      case HiveMonth.aout:
        return Month.aout;
      case HiveMonth.septembre:
        return Month.septembre;
      case HiveMonth.octobre:
        return Month.octobre;
      case HiveMonth.novembre:
        return Month.novembre;
      case HiveMonth.decembre:
        return Month.decembre;
    }
  }
}

extension MonthHive on Month {
  HiveMonth get hive {
    switch (this) {
      case Month.janvier:
        return HiveMonth.janvier;
      case Month.fevrier:
        return HiveMonth.fevrier;
      case Month.mars:
        return HiveMonth.mars;
      case Month.avril:
        return HiveMonth.avril;
      case Month.mai:
        return HiveMonth.mai;
      case Month.juin:
        return HiveMonth.juin;
      case Month.juillet:
        return HiveMonth.juillet;
      case Month.aout:
        return HiveMonth.aout;
      case Month.septembre:
        return HiveMonth.septembre;
      case Month.octobre:
        return HiveMonth.octobre;
      case Month.novembre:
        return HiveMonth.novembre;
      case Month.decembre:
        return HiveMonth.decembre;
      case Month.artemisUnknown:
        return HiveMonth.janvier;
    }
  }
}

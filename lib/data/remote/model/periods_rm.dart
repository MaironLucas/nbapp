import 'package:json_annotation/json_annotation.dart';

part 'periods_rm.g.dart';

@JsonSerializable()
class PeriodsRM {
  PeriodsRM(
    this.current,
    this.total,
    this.endOfPeriod,
  );

  final int current;
  final int total;
  final bool endOfPeriod;

  factory PeriodsRM.fromJson(Map<String, dynamic> json) =>
      _$PeriodsRMFromJson(json);
}

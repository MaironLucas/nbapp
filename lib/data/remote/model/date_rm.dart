import 'package:json_annotation/json_annotation.dart';

part 'date_rm.g.dart';

@JsonSerializable()
class DateRM {
  DateRM(
    this.start,
    this.end,
    this.duration,
  );

  final String start;
  final String end;
  final String duration;

  factory DateRM.fromJson(Map<String, dynamic> json) => _$DateRMFromJson(json);
}

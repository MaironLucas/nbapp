import 'package:json_annotation/json_annotation.dart';

part 'arena_rm.g.dart';

@JsonSerializable()
class ArenaRM {
  ArenaRM(
    this.city,
    this.name,
    this.state,
    this.country,
  );

  final String city;
  final String name;
  final String state;
  final String country;

  factory ArenaRM.fromJson(Map<String, dynamic> json) =>
      _$ArenaRMFromJson(json);
}

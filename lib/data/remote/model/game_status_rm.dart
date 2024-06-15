import 'package:json_annotation/json_annotation.dart';

part 'game_status_rm.g.dart';

@JsonSerializable(createToJson: false)
class GameStatusRM {
  GameStatusRM(
    this.clock,
    this.halftime,
    this.long,
  );

  final String? clock;
  final bool halftime;
  final String long;

  factory GameStatusRM.fromJson(Map<String, dynamic> json) =>
      _$GameStatusRMFromJson(json);
}

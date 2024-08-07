import 'package:json_annotation/json_annotation.dart';

part 'team_rm.g.dart';

@JsonSerializable(createToJson: false)
class TeamRM {
  TeamRM(
    this.id,
    this.name,
    this.nickname,
    this.code,
    this.logo,
  );

  final int id;
  final String name;
  final String nickname;
  final String code;
  final String logo;

  factory TeamRM.fromJson(Map<String, dynamic> json) => _$TeamRMFromJson(json);
}

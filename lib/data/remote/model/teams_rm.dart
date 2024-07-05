import 'package:json_annotation/json_annotation.dart';
import 'package:nbapp/data/remote/model/team_rm.dart';

part 'teams_rm.g.dart';

@JsonSerializable(createToJson: false)
class TeamsRM {
  TeamsRM(
    this.visitors,
    this.home,
  );

  final TeamRM visitors;
  final TeamRM home;

  factory TeamsRM.fromJson(Map<String, dynamic> json) =>
      _$TeamsRMFromJson(json);
}

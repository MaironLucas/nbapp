import 'package:json_annotation/json_annotation.dart';

part 'team_score_rm.g.dart';

@JsonSerializable(createToJson: false)
class TeamScoreRM {
  TeamScoreRM(
    this.win,
    this.loss,
    this.points,
  );

  final int win;
  final int loss;
  final int? points;

  factory TeamScoreRM.fromJson(Map<String, dynamic> json) =>
      _$TeamScoreRMFromJson(json);
}

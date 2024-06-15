import 'package:json_annotation/json_annotation.dart';
import 'package:nbapp/data/remote/model/team_score_rm.dart';

part 'scores_rm.g.dart';

@JsonSerializable(createToJson: false)
class ScoresRM {
  ScoresRM(
    this.visitors,
    this.home,
  );

  final TeamScoreRM visitors;
  final TeamScoreRM home;

  factory ScoresRM.fromJson(Map<String, dynamic> json) =>
      _$ScoresRMFromJson(json);
}

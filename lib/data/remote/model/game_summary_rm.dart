import 'package:json_annotation/json_annotation.dart';
import 'package:nbapp/data/remote/model/arena_rm.dart';
import 'package:nbapp/data/remote/model/date_rm.dart';
import 'package:nbapp/data/remote/model/game_status_rm.dart';
import 'package:nbapp/data/remote/model/periods_rm.dart';
import 'package:nbapp/data/remote/model/scores_rm.dart';
import 'package:nbapp/data/remote/model/teams_rm.dart';

part 'game_summary_rm.g.dart';

@JsonSerializable(createToJson: false)
class GameSummaryRM {
  GameSummaryRM(
    this.id,
    this.date,
    this.status,
    this.periods,
    this.arena,
    this.teams,
    this.scores,
  );

  final int id;
  final DateRM date;
  final GameStatusRM status;
  final PeriodsRM periods;
  final ArenaRM arena;
  final TeamsRM teams;
  final ScoresRM scores;

  factory GameSummaryRM.fromJson(Map<String, dynamic> json) =>
      _$GameSummaryRMFromJson(json);
}

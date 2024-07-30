import 'package:domain/exceptions.dart';
import 'package:domain/model/game_summary.dart';
import 'package:nbapp/data/mapper/game_status_mapper.dart';
import 'package:nbapp/data/mapper/team_mapper.dart';
import 'package:nbapp/data/mapper/team_scores_mapper.dart';
import 'package:nbapp/data/remote/model/game_summary_rm.dart';

extension GameSummaryRMtoDM on GameSummaryRM {
  GameSummary toDM() {
    try {
      return GameSummary(
        date: DateTime.parse(date.start),
        period: periods.current,
        gameStatus: status.toDM(),
        id: id.toString(),
        arenaName: arena.name,
        homeTeam: teams.home.toDM(),
        visitorTeam: teams.visitors.toDM(),
        homeTeamScore: scores.home.toDM(),
        visitorTeamScore: scores.visitors.toDM(),
      );
    } catch (_) {
      throw DataMappingException();
    }
  }
}

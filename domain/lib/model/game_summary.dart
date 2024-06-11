import 'package:domain/model/game_status.dart';
import 'package:domain/model/team.dart';
import 'package:domain/model/team_score.dart';

class GameSummary {
  GameSummary({
    required this.date,
    required this.period,
    required this.gameStatus,
    required this.id,
    required this.arenaName,
    required this.homeTeam,
    required this.visitorTeam,
    required this.homeTeamScore,
    required this.visitorTeamScore,
  });

  final String id;
  final DateTime date;
  final int period;
  final GameStatus gameStatus;
  final String arenaName;
  final Team homeTeam;
  final Team visitorTeam;
  final TeamScore homeTeamScore;
  final TeamScore visitorTeamScore;
}

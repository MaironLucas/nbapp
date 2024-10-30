import 'package:domain/model/game_summary.dart';
import 'package:domain/repository/game_repository.dart';
import 'package:nbapp/data/mapper/game_summary_mapper.dart';
import 'package:nbapp/data/remote/data_sources/game_rds.dart';

class GameRepository extends GameDataRepository {
  GameRepository({
    required GameRDS gameRDS,
  }) : _gameRDS = gameRDS;

  final GameRDS _gameRDS;

  @override
  Future<List<GameSummary>> getLiveGames() => _gameRDS.getGames().then(
        (games) => games
            .map(
              (game) => game.toDM(),
            )
            .toList(),
      );

  @override
  Future<List<GameSummary>> getTodayGames() => _gameRDS
      .getGames(
        date: DateTime.now(),
      )
      .then(
        (games) => games
            .map(
              (game) => game.toDM(),
            )
            .toList(),
      );
}

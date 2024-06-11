import 'package:domain/model/game_summary.dart';

abstract class GameDataRepository {
  Future<List<GameSummary>> getLiveGames();
}

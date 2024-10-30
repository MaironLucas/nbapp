import 'package:dio/dio.dart';
import 'package:domain/exceptions.dart';
import 'package:nbapp/common/utils.dart';
import 'package:nbapp/data/remote/model/game_summary_rm.dart';

class GameRDS {
  GameRDS({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  Future<List<GameSummaryRM>> getGames({DateTime? date}) async {
    final response = await _dio.get(
      date == null ? '${baseUrl}/games?live=all' : '${baseUrl}/games?date=${date.year}-${date.month}-${date.day}',
    );
    if (response.statusCode == 200 || response.data == null) {
      final games = <GameSummaryRM>[];
      final data = response.data as Map<String, dynamic>;
      for (final game in data['response']) {
        games.add(GameSummaryRM.fromJson(game));
      }
      return games;
    } else {
      throw BackendException();
    }
  }
}

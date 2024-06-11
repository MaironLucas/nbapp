import 'package:domain/model/game_summary.dart';
import 'package:domain/repository/game_repository.dart';
import 'package:domain/use_case/use_case.dart';

class GetLiveGamesUC extends UseCase<void, List<GameSummary>> {
  GetLiveGamesUC({
    required super.errorLogger,
    required GameDataRepository repository,
  }) : _repository = repository;

  final GameDataRepository _repository;

  @override
  Future<List<GameSummary>> getRawFuture(void params) =>
      _repository.getLiveGames();
}

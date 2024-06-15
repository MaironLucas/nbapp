import 'package:dio/dio.dart';
import 'package:domain/error_logger.dart';
import 'package:domain/repository/game_repository.dart';
import 'package:domain/use_case/get_live_games_uc.dart';
import 'package:get_it/get_it.dart';
import 'package:nbapp/data/remote/data_sources/game_rds.dart';
import 'package:nbapp/data/remote/infraestructure/my_dio.dart';
import 'package:nbapp/data/repository/game_repository.dart';
import 'package:nbapp/main.dart';

final getIt = GetIt.instance;

void setupDI() {
  initResources();
  initDataSources();
  initRepositories();
  initUseCases();
}

void initRepositories() {
  getIt.registerSingleton<GameDataRepository>(
    GameRepository(
      gameRDS: getIt<GameRDS>(),
    ),
  );
}

void initUseCases() {
  getIt.registerSingleton<GetLiveGamesUC>(
    GetLiveGamesUC(
      errorLogger: getIt<ErrorLogger>(),
      repository: getIt<GameDataRepository>(),
    ),
  );
}

void initDataSources() {
  getIt.registerSingleton<GameRDS>(
    GameRDS(
      dio: getIt<Dio>(),
    ),
  );
}

void initResources() {
  getIt.registerSingleton<Dio>(
    MyDio(),
  );
  getIt.registerSingleton<ErrorLogger>(
    Log().logError,
  );
}

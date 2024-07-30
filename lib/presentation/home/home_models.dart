import 'package:domain/model/game_summary.dart';

sealed class HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  HomeSuccess({
    required this.liveGames,
  });

  final List<GameSummary> liveGames;
}

class HomeError extends HomeState {}

sealed class HomeEvent {}

class GetLiveGames extends HomeEvent {}

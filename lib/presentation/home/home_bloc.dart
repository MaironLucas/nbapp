import 'package:bloc/bloc.dart';
import 'package:domain/use_case/get_today_games_uc.dart';
import 'package:nbapp/presentation/home/home_models.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required GetTodayGamesUC getTodayGamesUC,
  })  : _getTodayGamesUC = getTodayGamesUC,
        super(HomeLoading()) {
    on<GetLiveGames>(_onGetLiveGames);

    add(GetLiveGames());
  }

  final GetTodayGamesUC _getTodayGamesUC;

  Future<void> _onGetLiveGames(
    GetLiveGames event,
    Emitter<HomeState> emitter,
  ) async {
    emitter(HomeLoading());
    try {
      await Future.delayed(Duration(seconds: 2));
      emitter(
        HomeSuccess(
          todayGames: await _getTodayGamesUC.getFuture(null),
        ),
      );
    } catch (e) {
      emitter(HomeError());
    }
  }
}

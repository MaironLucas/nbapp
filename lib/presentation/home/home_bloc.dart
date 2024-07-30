import 'package:bloc/bloc.dart';
import 'package:domain/model/game_status.dart';
import 'package:domain/model/game_summary.dart';
import 'package:domain/model/team.dart';
import 'package:domain/model/team_score.dart';
import 'package:domain/use_case/get_live_games_uc.dart';
import 'package:nbapp/presentation/home/home_models.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required GetLiveGamesUC getLiveGamesUC,
  })  : _getLiveGamesUC = getLiveGamesUC,
        super(HomeLoading()) {
    on<GetLiveGames>(_onGetLiveGames);

    add(GetLiveGames());
  }

  final GetLiveGamesUC _getLiveGamesUC;

  Future<void> _onGetLiveGames(
    GetLiveGames event,
    Emitter<HomeState> emitter,
  ) async {
    final useMock = false;
    emitter(HomeLoading());
    try {
      await Future.delayed(Duration(seconds: 2));
      final liveGames = await _getLiveGamesUC.getFuture(null);
      emitter(
        HomeSuccess(
          liveGames: !useMock
              ? liveGames
              : [
                  GameSummary(
                    date: DateTime.now(),
                    period: 1,
                    gameStatus: GameStatus(
                      isFinished: false,
                      isHalfTime: false,
                    ),
                    id: '123',
                    arenaName: 'Crypto Arena',
                    homeTeam: Team(
                        id: 'hasd',
                        name: 'Los Angeles Lakers',
                        nickName: 'Lakers',
                        code: 'LKR',
                        logoUrl:
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Los_Angeles_Lakers_logo.svg/220px-Los_Angeles_Lakers_logo.svg.png'),
                    visitorTeam: Team(
                        id: 'hasd',
                        name: 'Boston Celtics',
                        nickName: 'Celtics',
                        code: 'BCS',
                        logoUrl:
                            'https://upload.wikimedia.org/wikipedia/fr/thumb/6/65/Celtics_de_Boston_logo.svg/1024px-Celtics_de_Boston_logo.svg.png'),
                    homeTeamScore: TeamScore(
                      wins: 10,
                      loses: 5,
                      points: 27,
                    ),
                    visitorTeamScore: TeamScore(
                      wins: 13,
                      loses: 2,
                      points: 33,
                    ),
                  ),
                  GameSummary(
                    date: DateTime.now(),
                    period: 4,
                    gameStatus: GameStatus(
                      isFinished: false,
                      isHalfTime: false,
                    ),
                    id: '123',
                    arenaName: 'Crypto Arena',
                    homeTeam: Team(
                        id: 'hasd',
                        name: 'Atlanta Hawks',
                        nickName: 'Lakers',
                        code: 'LKR',
                        logoUrl:
                            'https://upload.wikimedia.org/wikipedia/fr/e/ee/Hawks_2016.png'),
                    visitorTeam: Team(
                        id: 'hasd',
                        name: 'Boston Celtics',
                        nickName: 'Celtics',
                        code: 'BCS',
                        logoUrl:
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Brooklyn_Nets_newlogo.svg/130px-Brooklyn_Nets_newlogo.svg.png'),
                    homeTeamScore: TeamScore(
                      wins: 10,
                      loses: 5,
                      points: 120,
                    ),
                    visitorTeamScore: TeamScore(
                      wins: 13,
                      loses: 2,
                      points: 100,
                    ),
                  ),
                ],
        ),
      );
    } catch (e) {
      emitter(HomeError());
    }
  }
}

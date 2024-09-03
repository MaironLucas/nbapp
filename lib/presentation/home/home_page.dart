import 'package:carousel_slider/carousel_slider.dart';
import 'package:domain/use_case/get_live_games_uc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:nbapp/generated/l10n.dart';
import 'package:nbapp/presentation/home/common/game_chip.dart';
import 'package:nbapp/presentation/home/home_bloc.dart';
import 'package:nbapp/presentation/home/home_models.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).appName),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Text(
                S.of(context).homeOnboardingMessage,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              BlocProvider(
                create: (context) => HomeBloc(
                  getLiveGamesUC: GetIt.instance.get<GetLiveGamesUC>(),
                ),
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) => switch (state) {
                    HomeLoading() => Center(
                        child: CircularProgressIndicator(),
                      ),
                    HomeError() => Center(
                        child: Text(
                          S.of(context).tryAgain,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.error,
                          ),
                        ),
                      ),
                    HomeSuccess() => state.liveGames.isEmpty
                        ? Center(
                            child: Text(
                              S.of(context).emptyLiveGames,
                              textAlign: TextAlign.center,
                            ),
                          )
                        : CarouselSlider(
                            items: state.liveGames
                                .map(
                                  (game) => Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 4),
                                    child: GameChip(
                                      homeTeamLogo: game.homeTeam.logoUrl,
                                      visitorTeamLogo: game.visitorTeam.logoUrl,
                                      homeTeamScore: game.homeTeamScore.points.toString(),
                                      visitorTeamScore: game.visitorTeamScore.points.toString(),
                                    ),
                                  ),
                                )
                                .toList(),
                            options: CarouselOptions(
                              enableInfiniteScroll: false,
                              viewportFraction: 0.25,
                              autoPlay: true,
                              enlargeCenterPage: true,
                            ),
                          ),
                  },
                ),
              ),
            ],
          ),
        ),
      );
}

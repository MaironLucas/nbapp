import 'package:carousel_slider/carousel_slider.dart';
import 'package:domain/use_case/get_today_games_uc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:nbapp/common/theme/util.dart';
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
          title: Text(context.strings.appName),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Text(
                context.strings.homeOnboardingMessage,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              BlocProvider(
                create: (context) => HomeBloc(
                  getTodayGamesUC: GetIt.instance.get<GetTodayGamesUC>(),
                ),
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) => switch (state) {
                    HomeLoading() => Center(
                        child: CircularProgressIndicator(),
                      ),
                    HomeError() => Center(
                        child: Text(
                          context.strings.tryAgain,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.error,
                          ),
                        ),
                      ),
                    HomeSuccess() => state.todayGames.isEmpty
                        ? Center(
                            child: RichText(
                              text: TextSpan(
                                text: context.strings.emptyTodayGames,
                                children: [
                                  TextSpan(
                                    text: context.strings.emptyTodayGamesLink,
                                    style: TextStyle(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // TODO(Mairon): Go to schedule
                                      },
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        : CarouselSlider(
                            items: state.todayGames
                                .map(
                                  (game) => Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 4),
                                    child: GameChip(
                                      homeTeamLogo: game.homeTeam.logoUrl,
                                      visitorTeamLogo: game.visitorTeam.logoUrl,
                                      homeTeamScore: game.homeTeamScore.points,
                                      visitorTeamScore: game.visitorTeamScore.points,
                                      date: game.date.toLocal(),
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

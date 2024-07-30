import 'package:domain/use_case/get_live_games_uc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:nbapp/generated/l10n.dart';
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
              Container(
                width: double.infinity,
                child: Text(
                  S.of(context).liveGames,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 4),
              Container(
                height: 168,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.outline,
                    width: 1,
                  ),
                ),
                child: BlocProvider(
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
                          : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ...state.liveGames.map(
                                    (game) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surfaceContainer,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .outline,
                                            width: 1,
                                          ),
                                        ),
                                        padding: EdgeInsets.all(4),
                                        child: Column(
                                          children: [
                                            Image.network(
                                              game.homeTeam.logoUrl,
                                              height: 50,
                                              width: 50,
                                            ),
                                            Text(
                                              game.homeTeamScore.points
                                                  .toString(),
                                            ),
                                            Text(
                                              game.visitorTeamScore.points
                                                  .toString(),
                                            ),
                                            Image.network(
                                              game.visitorTeam.logoUrl,
                                              height: 50,
                                              width: 50,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

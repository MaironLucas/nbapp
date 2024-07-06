import 'package:domain/model/game_status.dart';
import 'package:domain/model/game_summary.dart';
import 'package:domain/model/team.dart';
import 'package:domain/model/team_score.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  final isEmpty = false;

  final mockGames = [
    // GameSummary(
    //   date: DateTime.now(),
    //   period: 1,
    //   gameStatus: GameStatus(
    //     isFinished: false,
    //     isHalfTime: false,
    //   ),
    //   id: '123',
    //   arenaName: 'Crypto Arena',
    //   homeTeam: Team(
    //       id: 'hasd',
    //       name: 'Los Angeles Lakers',
    //       nickName: 'Lakers',
    //       code: 'LKR',
    //       logoUrl:
    //           'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Los_Angeles_Lakers_logo.svg/220px-Los_Angeles_Lakers_logo.svg.png'),
    //   visitorTeam: Team(
    //       id: 'hasd',
    //       name: 'Boston Celtics',
    //       nickName: 'Celtics',
    //       code: 'BCS',
    //       logoUrl:
    //           'https://upload.wikimedia.org/wikipedia/fr/thumb/6/65/Celtics_de_Boston_logo.svg/1024px-Celtics_de_Boston_logo.svg.png'),
    //   homeTeamScore: TeamScore(
    //     wins: 10,
    //     loses: 5,
    //     points: 27,
    //   ),
    //   visitorTeamScore: TeamScore(
    //     wins: 13,
    //     loses: 2,
    //     points: 33,
    //   ),
    // ),
    // GameSummary(
    //   date: DateTime.now(),
    //   period: 4,
    //   gameStatus: GameStatus(
    //     isFinished: false,
    //     isHalfTime: false,
    //   ),
    //   id: '123',
    //   arenaName: 'Crypto Arena',
    //   homeTeam: Team(
    //       id: 'hasd',
    //       name: 'Atlanta Hawks',
    //       nickName: 'Lakers',
    //       code: 'LKR',
    //       logoUrl:
    //           'https://upload.wikimedia.org/wikipedia/fr/e/ee/Hawks_2016.png'),
    //   visitorTeam: Team(
    //       id: 'hasd',
    //       name: 'Boston Celtics',
    //       nickName: 'Celtics',
    //       code: 'BCS',
    //       logoUrl:
    //           'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Brooklyn_Nets_newlogo.svg/130px-Brooklyn_Nets_newlogo.svg.png'),
    //   homeTeamScore: TeamScore(
    //     wins: 10,
    //     loses: 5,
    //     points: 120,
    //   ),
    //   visitorTeamScore: TeamScore(
    //     wins: 13,
    //     loses: 2,
    //     points: 100,
    //   ),
    // ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('NBApp'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Text(
                'Welcome to NBApp!\nThis is the right place to follow\nthe NBA season by live games',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                child: Text(
                  'Live Games',
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
                child: mockGames.isEmpty
                    ? Center(
                        child: Text(
                          'There is no game being played right now.\nCome back when the season starts!',
                          textAlign: TextAlign.center,
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...mockGames.map(
                              (game) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceContainer,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color:
                                          Theme.of(context).colorScheme.outline,
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
                                        game.homeTeamScore.points.toString(),
                                      ),
                                      Text(
                                        game.visitorTeamScore.points.toString(),
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
              ),
            ],
          ),
        ),
      );
}

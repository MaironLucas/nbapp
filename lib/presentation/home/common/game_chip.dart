import 'package:flutter/material.dart';

class GameChip extends StatelessWidget {
  const GameChip({
    required this.homeTeamLogo,
    required this.visitorTeamLogo,
    required this.homeTeamScore,
    required this.visitorTeamScore,
    super.key,
  });

  final String homeTeamLogo;
  final String visitorTeamLogo;
  final String homeTeamScore;
  final String visitorTeamScore;

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.surfaceContainer,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: Theme.of(context).colorScheme.outline,
        width: 3,
      ),
    ),
    padding: EdgeInsets.all(4),
    child: Column(
      children: [
        Expanded(
          child: Image.network(
            homeTeamLogo,
          ),
        ),
        Text(
          homeTeamScore,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          visitorTeamScore,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Expanded(
          child: Image.network(
            visitorTeamLogo,
          ),
        ),
      ],
    ),
  );
}

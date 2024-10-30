import 'package:flutter/material.dart';

class GameChip extends StatelessWidget {
  const GameChip({
    required this.homeTeamLogo,
    required this.visitorTeamLogo,
    required this.homeTeamScore,
    required this.visitorTeamScore,
    required this.date,
    super.key,
  });

  final String homeTeamLogo;
  final String visitorTeamLogo;
  final int? homeTeamScore;
  final int? visitorTeamScore;
  final DateTime date;

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
            if (homeTeamScore != null && visitorTeamScore != null) ...[
              Text(
                homeTeamScore!.toString(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                visitorTeamScore!.toString(),
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ] else
              Text(
                '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}',
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

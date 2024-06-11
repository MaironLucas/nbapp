import 'package:domain/model/team_score.dart';
import 'package:nbapp/data/remote/model/team_score_rm.dart';

extension TeamScoresMapper on TeamScoreRM {
  TeamScore toDM() => TeamScore(
        wins: win,
        loses: loss,
        points: points,
      );
}

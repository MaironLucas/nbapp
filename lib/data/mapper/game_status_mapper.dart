import 'package:domain/exceptions.dart';
import 'package:domain/model/game_status.dart';
import 'package:nbapp/data/remote/model/game_status_rm.dart';

extension GameStatusRMtoDM on GameStatusRM {
  GameStatus toDM() {
    try {
      return GameStatus(
        clock: clock,
        isFinished: long == 'Finished',
        isHalfTime: halftime,
      );
    } catch (_) {
      throw DataMappingException();
    }
  }
}

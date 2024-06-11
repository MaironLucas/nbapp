class GameStatus {
  GameStatus({
    required this.isFinished,
    required this.isHalfTime,
    this.clock,
  });

  final String? clock;
  final bool isHalfTime;
  final bool isFinished;
}

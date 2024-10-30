class TeamScore {
  TeamScore({
    required this.wins,
    required this.loses,
    this.points,
});

  final int wins;
  final int loses;
  final int? points;
}
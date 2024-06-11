import 'package:dio/dio.dart';
import 'package:nbapp/common/utils.dart';

class GameRDS {
  GameRDS({
    required Dio dio,
}) : _dio = dio;

  final Dio _dio;
  
  Future<void> getLiveGames() async {
    _dio.get('${baseUrl}/games?live=all');
  }
}
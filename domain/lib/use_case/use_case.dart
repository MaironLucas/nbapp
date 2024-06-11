import 'package:domain/error_logger.dart';
import 'package:domain/exceptions.dart';

abstract class UseCase<Param, Return> {
  const UseCase({
    required this.errorLogger,
  });

  final ErrorLogger errorLogger;

  Future<Return> getRawFuture(Param params);

  Future<Return> getFuture(Param params) async {
    try {
      return await getRawFuture(params);
    } catch (e, stackTrace) {
      errorLogger('Domain level error', e, stackTrace);

      if (e is! NBAppException) {
        throw UnknownException();
      } else {
        rethrow;
      }
    }
  }
}

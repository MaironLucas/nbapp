import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class Log {
  Logger logger = Logger(printer: PrettyPrinter());

  Future<void> logError(
    String errorType,
    dynamic error, [
    StackTrace? stackTrace,
  ]) async {
    logger.e(errorType, error: error, stackTrace: stackTrace);
  }
}

void main() async {
  final errorLogger = Log().logError;
  await runZonedGuarded(
    () async {
      runApp(
        MyApp(),
      );
    },
    (error, stackTrace) => errorLogger(
      'Zoned Guaded Error',
      error,
      stackTrace,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NBApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Placeholder(),
    );
  }
}

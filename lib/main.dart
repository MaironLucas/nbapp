import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:logger/logger.dart';
import 'package:nbapp/common/di.dart';
import 'package:nbapp/common/routing/routing.dart';
import 'package:nbapp/common/theme/theme.dart';
import 'package:nbapp/common/theme/util.dart';
import 'package:nbapp/generated/l10n.dart';

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
      setupDI();
      runApp(
        _MyApp(),
      );
    },
    (error, stackTrace) => errorLogger(
      'Zoned Guaded Error',
      error,
      stackTrace,
    ),
  );
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Poppins", "Poppins");
    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp.router(
      title: 'NBApp',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: theme.dark(),
      routerConfig: appRoutes,
    );
  }
}

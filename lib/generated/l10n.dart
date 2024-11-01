// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `NBApp`
  String get appName {
    return Intl.message(
      'NBApp',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to NBApp!\nThis is the right place to follow\nthe NBA season by live games`
  String get homeOnboardingMessage {
    return Intl.message(
      'Welcome to NBApp!\nThis is the right place to follow\nthe NBA season by live games',
      name: 'homeOnboardingMessage',
      desc: '',
      args: [],
    );
  }

  /// `Live Games`
  String get liveGames {
    return Intl.message(
      'Live Games',
      name: 'liveGames',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get tryAgain {
    return Intl.message(
      'Try Again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `There is no game being played right now.\nCome back later!`
  String get emptyLiveGames {
    return Intl.message(
      'There is no game being played right now.\nCome back later!',
      name: 'emptyLiveGames',
      desc: '',
      args: [],
    );
  }

  /// `There is no game today.\nCome back tomorrow or check the `
  String get emptyTodayGames {
    return Intl.message(
      'There is no game today.\nCome back tomorrow or check the ',
      name: 'emptyTodayGames',
      desc: '',
      args: [],
    );
  }

  /// `schedule`
  String get emptyTodayGamesLink {
    return Intl.message(
      'schedule',
      name: 'emptyTodayGamesLink',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

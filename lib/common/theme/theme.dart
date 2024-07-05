import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4281166405),
      surfaceTint: Color(4281166405),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289786306),
      onPrimaryContainer: Color(4278198543),
      secondary: Color(4278217314),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4288541414),
      onSecondaryContainer: Color(4278198301),
      tertiary: Color(4283521938),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4292796671),
      onTertiaryContainer: Color(4278851147),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294376435),
      onSurface: Color(4279770393),
      onSurfaceVariant: Color(4282468674),
      outline: Color(4285626737),
      outlineVariant: Color(4290824639),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086509),
      inversePrimary: Color(4288009639),
      primaryFixed: Color(4289786306),
      onPrimaryFixed: Color(4278198543),
      primaryFixedDim: Color(4288009639),
      onPrimaryFixedVariant: Color(4279259439),
      secondaryFixed: Color(4288541414),
      onSecondaryFixed: Color(4278198301),
      secondaryFixedDim: Color(4286698954),
      onSecondaryFixedVariant: Color(4278210633),
      tertiaryFixed: Color(4292796671),
      onTertiaryFixed: Color(4278851147),
      tertiaryFixedDim: Color(4290429951),
      onTertiaryFixedVariant: Color(4281942905),
      surfaceDim: Color(4292271060),
      surfaceBright: Color(4294376435),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293981678),
      surfaceContainer: Color(4293586920),
      surfaceContainerHigh: Color(4293257954),
      surfaceContainerHighest: Color(4292863197),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278799659),
      surfaceTint: Color(4281166405),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4282679641),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278209605),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4280779128),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281679732),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284969386),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294376435),
      onSurface: Color(4279770393),
      onSurfaceVariant: Color(4282205502),
      outline: Color(4284047706),
      outlineVariant: Color(4285889909),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086509),
      inversePrimary: Color(4288009639),
      primaryFixed: Color(4282679641),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4280969026),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4280779128),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4278216799),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284969386),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283324560),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292271060),
      surfaceBright: Color(4294376435),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293981678),
      surfaceContainer: Color(4293586920),
      surfaceContainerHigh: Color(4293257954),
      surfaceContainerHighest: Color(4292863197),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278200595),
      surfaceTint: Color(4281166405),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278799659),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278200100),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4278209605),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4279377234),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4281679732),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294376435),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280165920),
      outline: Color(4282205502),
      outlineVariant: Color(4282205502),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086509),
      inversePrimary: Color(4290444235),
      primaryFixed: Color(4278799659),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278203674),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4278209605),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4278203183),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4281679732),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4280166493),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292271060),
      surfaceBright: Color(4294376435),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293981678),
      surfaceContainer: Color(4293586920),
      surfaceContainerHigh: Color(4293257954),
      surfaceContainerHighest: Color(4292863197),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4288009639),
      surfaceTint: Color(4288009639),
      onPrimary: Color(4278204701),
      primaryContainer: Color(4279259439),
      onPrimaryContainer: Color(4289786306),
      secondary: Color(4286698954),
      onSecondary: Color(4278204210),
      secondaryContainer: Color(4278210633),
      onSecondaryContainer: Color(4288541414),
      tertiary: Color(4290429951),
      onTertiary: Color(4280429665),
      tertiaryContainer: Color(4281942905),
      onTertiaryContainer: Color(4292796671),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279244048),
      onSurface: Color(4292863197),
      onSurfaceVariant: Color(4290824639),
      outline: Color(4287337354),
      outlineVariant: Color(4282468674),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292863197),
      inversePrimary: Color(4281166405),
      primaryFixed: Color(4289786306),
      onPrimaryFixed: Color(4278198543),
      primaryFixedDim: Color(4288009639),
      onPrimaryFixedVariant: Color(4279259439),
      secondaryFixed: Color(4288541414),
      onSecondaryFixed: Color(4278198301),
      secondaryFixedDim: Color(4286698954),
      onSecondaryFixedVariant: Color(4278210633),
      tertiaryFixed: Color(4292796671),
      onTertiaryFixed: Color(4278851147),
      tertiaryFixedDim: Color(4290429951),
      onTertiaryFixedVariant: Color(4281942905),
      surfaceDim: Color(4279244048),
      surfaceBright: Color(4281678646),
      surfaceContainerLowest: Color(4278849291),
      surfaceContainerLow: Color(4279770393),
      surfaceContainer: Color(4280033564),
      surfaceContainerHigh: Color(4280691495),
      surfaceContainerHighest: Color(4281415217),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4288272811),
      surfaceTint: Color(4288009639),
      onPrimary: Color(4278197003),
      primaryContainer: Color(4284522100),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4287027918),
      onSecondary: Color(4278196759),
      secondaryContainer: Color(4283014804),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4290758911),
      onTertiary: Color(4278456134),
      tertiaryContainer: Color(4286811592),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279244048),
      onSurface: Color(4294442229),
      onSurfaceVariant: Color(4291153348),
      outline: Color(4288521628),
      outlineVariant: Color(4286416253),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292863197),
      inversePrimary: Color(4279391024),
      primaryFixed: Color(4289786306),
      onPrimaryFixed: Color(4278195464),
      primaryFixedDim: Color(4288009639),
      onPrimaryFixedVariant: Color(4278206241),
      secondaryFixed: Color(4288541414),
      onSecondaryFixed: Color(4278195474),
      secondaryFixedDim: Color(4286698954),
      onSecondaryFixedVariant: Color(4278206008),
      tertiaryFixed: Color(4292796671),
      onTertiaryFixed: Color(4278192448),
      tertiaryFixedDim: Color(4290429951),
      onTertiaryFixedVariant: Color(4280824423),
      surfaceDim: Color(4279244048),
      surfaceBright: Color(4281678646),
      surfaceContainerLowest: Color(4278849291),
      surfaceContainerLow: Color(4279770393),
      surfaceContainer: Color(4280033564),
      surfaceContainerHigh: Color(4280691495),
      surfaceContainerHighest: Color(4281415217),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4293918703),
      surfaceTint: Color(4288009639),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4288272811),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293656571),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4287027918),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294834943),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4290758911),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279244048),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294311411),
      outline: Color(4291153348),
      outlineVariant: Color(4291153348),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292863197),
      inversePrimary: Color(4278202649),
      primaryFixed: Color(4290115270),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4288272811),
      onPrimaryFixedVariant: Color(4278197003),
      secondaryFixed: Color(4288870123),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4287027918),
      onSecondaryFixedVariant: Color(4278196759),
      tertiaryFixed: Color(4293125631),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4290758911),
      onTertiaryFixedVariant: Color(4278456134),
      surfaceDim: Color(4279244048),
      surfaceBright: Color(4281678646),
      surfaceContainerLowest: Color(4278849291),
      surfaceContainerLow: Color(4279770393),
      surfaceContainer: Color(4280033564),
      surfaceContainerHigh: Color(4280691495),
      surfaceContainerHighest: Color(4281415217),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

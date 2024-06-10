import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff68548e),
      surfaceTint: Color(0xff68548e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffebddff),
      onPrimaryContainer: Color(0xff230f46),
      secondary: Color(0xff006878),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa5eeff),
      onSecondaryContainer: Color(0xff001f25),
      tertiary: Color(0xff8a4a65),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffd9e5),
      onTertiaryContainer: Color(0xff390721),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffef7ff),
      onBackground: Color(0xff1d1b20),
      surface: Color(0xfffef7ff),
      onSurface: Color(0xff1d1b20),
      surfaceVariant: Color(0xffe7e0eb),
      onSurfaceVariant: Color(0xff49454e),
      outline: Color(0xff7a757f),
      outlineVariant: Color(0xffcbc4cf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff322f35),
      inverseOnSurface: Color(0xfff5eff7),
      inversePrimary: Color(0xffd2bcfd),
      primaryFixed: Color(0xffebddff),
      onPrimaryFixed: Color(0xff230f46),
      primaryFixedDim: Color(0xffd2bcfd),
      onPrimaryFixedVariant: Color(0xff4f3d74),
      secondaryFixed: Color(0xffa5eeff),
      onSecondaryFixed: Color(0xff001f25),
      secondaryFixedDim: Color(0xff83d2e4),
      onSecondaryFixedVariant: Color(0xff004e5b),
      tertiaryFixed: Color(0xffffd9e5),
      onTertiaryFixed: Color(0xff390721),
      tertiaryFixedDim: Color(0xffffb0ce),
      onTertiaryFixedVariant: Color(0xff6e334d),
      surfaceDim: Color(0xffded8e0),
      surfaceBright: Color(0xfffef7ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff8f1fa),
      surfaceContainer: Color(0xfff2ecf4),
      surfaceContainerHigh: Color(0xffede6ee),
      surfaceContainerHighest: Color(0xffe7e0e8),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff4b3970),
      surfaceTint: Color(0xff68548e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff7e6aa6),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff004a56),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff277f8f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff692f49),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa3607c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffef7ff),
      onBackground: Color(0xff1d1b20),
      surface: Color(0xfffef7ff),
      onSurface: Color(0xff1d1b20),
      surfaceVariant: Color(0xffe7e0eb),
      onSurfaceVariant: Color(0xff45414a),
      outline: Color(0xff625d67),
      outlineVariant: Color(0xff7e7983),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff322f35),
      inverseOnSurface: Color(0xfff5eff7),
      inversePrimary: Color(0xffd2bcfd),
      primaryFixed: Color(0xff7e6aa6),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff65528b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff277f8f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff006575),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffa3607c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff874863),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffded8e0),
      surfaceBright: Color(0xfffef7ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff8f1fa),
      surfaceContainer: Color(0xfff2ecf4),
      surfaceContainerHigh: Color(0xffede6ee),
      surfaceContainerHighest: Color(0xffe7e0e8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff2a164d),
      surfaceTint: Color(0xff68548e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4b3970),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff00262d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff004a56),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff410e28),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff692f49),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffef7ff),
      onBackground: Color(0xff1d1b20),
      surface: Color(0xfffef7ff),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffe7e0eb),
      onSurfaceVariant: Color(0xff26222b),
      outline: Color(0xff45414a),
      outlineVariant: Color(0xff45414a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff322f35),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xfff3e8ff),
      primaryFixed: Color(0xff4b3970),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff342258),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff004a56),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff00323a),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff692f49),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff4f1933),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffded8e0),
      surfaceBright: Color(0xfffef7ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff8f1fa),
      surfaceContainer: Color(0xfff2ecf4),
      surfaceContainerHigh: Color(0xffede6ee),
      surfaceContainerHighest: Color(0xffe7e0e8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffd2bcfd),
      surfaceTint: Color(0xffd2bcfd),
      onPrimary: Color(0xff38265c),
      primaryContainer: Color(0xff4f3d74),
      onPrimaryContainer: Color(0xffebddff),
      secondary: Color(0xff83d2e4),
      onSecondary: Color(0xff00363f),
      secondaryContainer: Color(0xff004e5b),
      onSecondaryContainer: Color(0xffa5eeff),
      tertiary: Color(0xffffb0ce),
      onTertiary: Color(0xff531d37),
      tertiaryContainer: Color(0xff6e334d),
      onTertiaryContainer: Color(0xffffd9e5),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff151218),
      onBackground: Color(0xffe7e0e8),
      surface: Color(0xff151218),
      onSurface: Color(0xffe7e0e8),
      surfaceVariant: Color(0xff49454e),
      onSurfaceVariant: Color(0xffcbc4cf),
      outline: Color(0xff948f99),
      outlineVariant: Color(0xff49454e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe7e0e8),
      inverseOnSurface: Color(0xff322f35),
      inversePrimary: Color(0xff68548e),
      primaryFixed: Color(0xffebddff),
      onPrimaryFixed: Color(0xff230f46),
      primaryFixedDim: Color(0xffd2bcfd),
      onPrimaryFixedVariant: Color(0xff4f3d74),
      secondaryFixed: Color(0xffa5eeff),
      onSecondaryFixed: Color(0xff001f25),
      secondaryFixedDim: Color(0xff83d2e4),
      onSecondaryFixedVariant: Color(0xff004e5b),
      tertiaryFixed: Color(0xffffd9e5),
      onTertiaryFixed: Color(0xff390721),
      tertiaryFixedDim: Color(0xffffb0ce),
      onTertiaryFixedVariant: Color(0xff6e334d),
      surfaceDim: Color(0xff151218),
      surfaceBright: Color(0xff3b383e),
      surfaceContainerLowest: Color(0xff0f0d13),
      surfaceContainerLow: Color(0xff1d1b20),
      surfaceContainer: Color(0xff211f24),
      surfaceContainerHigh: Color(0xff2b292f),
      surfaceContainerHighest: Color(0xff36343a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffd6c0ff),
      surfaceTint: Color(0xffd2bcfd),
      onPrimary: Color(0xff1d0840),
      primaryContainer: Color(0xff9b86c4),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xff88d7e9),
      onSecondary: Color(0xff00191f),
      secondaryContainer: Color(0xff4a9cad),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffb6d2),
      onTertiary: Color(0xff32021c),
      tertiaryContainer: Color(0xffc37b98),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff151218),
      onBackground: Color(0xffe7e0e8),
      surface: Color(0xff151218),
      onSurface: Color(0xfffff9ff),
      surfaceVariant: Color(0xff49454e),
      onSurfaceVariant: Color(0xffcfc8d3),
      outline: Color(0xffa7a1ab),
      outlineVariant: Color(0xff86818b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe7e0e8),
      inverseOnSurface: Color(0xff2c292f),
      inversePrimary: Color(0xff503e75),
      primaryFixed: Color(0xffebddff),
      onPrimaryFixed: Color(0xff18023b),
      primaryFixedDim: Color(0xffd2bcfd),
      onPrimaryFixedVariant: Color(0xff3e2c62),
      secondaryFixed: Color(0xffa5eeff),
      onSecondaryFixed: Color(0xff001418),
      secondaryFixedDim: Color(0xff83d2e4),
      onSecondaryFixedVariant: Color(0xff003c46),
      tertiaryFixed: Color(0xffffd9e5),
      onTertiaryFixed: Color(0xff2b0016),
      tertiaryFixedDim: Color(0xffffb0ce),
      onTertiaryFixedVariant: Color(0xff5a233d),
      surfaceDim: Color(0xff151218),
      surfaceBright: Color(0xff3b383e),
      surfaceContainerLowest: Color(0xff0f0d13),
      surfaceContainerLow: Color(0xff1d1b20),
      surfaceContainer: Color(0xff211f24),
      surfaceContainerHigh: Color(0xff2b292f),
      surfaceContainerHighest: Color(0xff36343a),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9ff),
      surfaceTint: Color(0xffd2bcfd),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffd6c0ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff3fcff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff88d7e9),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9f9),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffb6d2),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff151218),
      onBackground: Color(0xffe7e0e8),
      surface: Color(0xff151218),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff49454e),
      onSurfaceVariant: Color(0xfffff9ff),
      outline: Color(0xffcfc8d3),
      outlineVariant: Color(0xffcfc8d3),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe7e0e8),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff321f55),
      primaryFixed: Color(0xffeee2ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffd6c0ff),
      onPrimaryFixedVariant: Color(0xff1d0840),
      secondaryFixed: Color(0xffb5f0ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff88d7e9),
      onSecondaryFixedVariant: Color(0xff00191f),
      tertiaryFixed: Color(0xffffdfe9),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb6d2),
      onTertiaryFixedVariant: Color(0xff32021c),
      surfaceDim: Color(0xff151218),
      surfaceBright: Color(0xff3b383e),
      surfaceContainerLowest: Color(0xff0f0d13),
      surfaceContainerLow: Color(0xff1d1b20),
      surfaceContainer: Color(0xff211f24),
      surfaceContainerHigh: Color(0xff2b292f),
      surfaceContainerHighest: Color(0xff36343a),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surfaceContainer,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
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

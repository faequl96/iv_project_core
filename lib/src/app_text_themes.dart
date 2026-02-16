import 'package:flutter/material.dart';

class AppTextThemes {
  const AppTextThemes._();

  static TextTheme nunito() {
    final textTheme = ThemeData.light().textTheme;

    TextStyle? nunitoFont(TextStyle? textStyle) {
      return textStyle?.copyWith(fontFamily: 'Nunito', package: 'iv_project_core');
    }

    return TextTheme(
      displayLarge: nunitoFont(textTheme.displayLarge),
      displayMedium: nunitoFont(textTheme.displayMedium),
      displaySmall: nunitoFont(textTheme.displaySmall),
      headlineLarge: nunitoFont(textTheme.headlineLarge),
      headlineMedium: nunitoFont(textTheme.headlineMedium),
      headlineSmall: nunitoFont(textTheme.headlineSmall),
      titleLarge: nunitoFont(textTheme.titleLarge),
      titleMedium: nunitoFont(textTheme.titleMedium),
      titleSmall: nunitoFont(textTheme.titleSmall),
      bodyLarge: nunitoFont(textTheme.bodyLarge),
      bodyMedium: nunitoFont(textTheme.bodyMedium),
      bodySmall: nunitoFont(textTheme.bodySmall),
      labelLarge: nunitoFont(textTheme.labelLarge),
      labelMedium: nunitoFont(textTheme.labelLarge),
      labelSmall: nunitoFont(textTheme.labelLarge),
    );
  }

  static TextTheme inter() {
    final textTheme = ThemeData.light().textTheme;

    TextStyle? interFont(TextStyle? textStyle) {
      return textStyle?.copyWith(fontFamily: 'Inter', package: 'iv_project_core');
    }

    return TextTheme(
      displayLarge: interFont(textTheme.displayLarge),
      displayMedium: interFont(textTheme.displayMedium),
      displaySmall: interFont(textTheme.displaySmall),
      headlineLarge: interFont(textTheme.headlineLarge),
      headlineMedium: interFont(textTheme.headlineMedium),
      headlineSmall: interFont(textTheme.headlineSmall),
      titleLarge: interFont(textTheme.titleLarge),
      titleMedium: interFont(textTheme.titleMedium),
      titleSmall: interFont(textTheme.titleSmall),
      bodyLarge: interFont(textTheme.bodyLarge),
      bodyMedium: interFont(textTheme.bodyMedium),
      bodySmall: interFont(textTheme.bodySmall),
      labelLarge: interFont(textTheme.labelLarge),
      labelMedium: interFont(textTheme.labelLarge),
      labelSmall: interFont(textTheme.labelLarge),
    );
  }

  static TextTheme pacifico() {
    final textTheme = ThemeData.light().textTheme;

    TextStyle? pacificoFont(TextStyle? textStyle) {
      return textStyle?.copyWith(fontFamily: 'Pacifico', package: 'iv_project_core');
    }

    return TextTheme(
      displayLarge: pacificoFont(textTheme.displayLarge),
      displayMedium: pacificoFont(textTheme.displayMedium),
      displaySmall: pacificoFont(textTheme.displaySmall),
      headlineLarge: pacificoFont(textTheme.headlineLarge),
      headlineMedium: pacificoFont(textTheme.headlineMedium),
      headlineSmall: pacificoFont(textTheme.headlineSmall),
      titleLarge: pacificoFont(textTheme.titleLarge),
      titleMedium: pacificoFont(textTheme.titleMedium),
      titleSmall: pacificoFont(textTheme.titleSmall),
      bodyLarge: pacificoFont(textTheme.bodyLarge),
      bodyMedium: pacificoFont(textTheme.bodyMedium),
      bodySmall: pacificoFont(textTheme.bodySmall),
      labelLarge: pacificoFont(textTheme.labelLarge),
      labelMedium: pacificoFont(textTheme.labelLarge),
      labelSmall: pacificoFont(textTheme.labelLarge),
    );
  }

  static TextTheme arefRuqaa() {
    final textTheme = ThemeData.light().textTheme;

    TextStyle? arefRuqaaFont(TextStyle? textStyle) {
      return textStyle?.copyWith(fontFamily: 'ArefRuqaa', package: 'iv_project_core');
    }

    return TextTheme(
      displayLarge: arefRuqaaFont(textTheme.displayLarge),
      displayMedium: arefRuqaaFont(textTheme.displayMedium),
      displaySmall: arefRuqaaFont(textTheme.displaySmall),
      headlineLarge: arefRuqaaFont(textTheme.headlineLarge),
      headlineMedium: arefRuqaaFont(textTheme.headlineMedium),
      headlineSmall: arefRuqaaFont(textTheme.headlineSmall),
      titleLarge: arefRuqaaFont(textTheme.titleLarge),
      titleMedium: arefRuqaaFont(textTheme.titleMedium),
      titleSmall: arefRuqaaFont(textTheme.titleSmall),
      bodyLarge: arefRuqaaFont(textTheme.bodyLarge),
      bodyMedium: arefRuqaaFont(textTheme.bodyMedium),
      bodySmall: arefRuqaaFont(textTheme.bodySmall),
      labelLarge: arefRuqaaFont(textTheme.labelLarge),
      labelMedium: arefRuqaaFont(textTheme.labelLarge),
      labelSmall: arefRuqaaFont(textTheme.labelLarge),
    );
  }
}

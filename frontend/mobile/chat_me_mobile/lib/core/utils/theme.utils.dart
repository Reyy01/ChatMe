import 'package:chat_me_mobile/core/utils/cutom_colors.dart';
import 'package:flutter/material.dart';

ThemeData appTheme(Brightness brightness) {
  final bool isLight = brightness == Brightness.light;

  TextStyle textStyle(double size) => TextStyle(
        fontFamily: 'Instagram',
        fontSize: size,
        color: isLight ? Colors.black : Colors.white,
      );

  TextSelectionThemeData textSelectionThemeData = TextSelectionThemeData(
    cursorColor: isLight ? Colors.blueAccent : CustomColors.darkOrange,
    selectionColor: isLight ? Colors.blueAccent : Colors.grey[300],
    selectionHandleColor: isLight ? Colors.blueAccent : CustomColors.darkOrange,
  );

  return ThemeData(
    useMaterial3: false,
    brightness: brightness,
    textTheme: TextTheme(
      displayLarge: textStyle(32),
      displayMedium: textStyle(24),
      displaySmall: textStyle(16),
      bodyLarge: textStyle(20),
      bodyMedium: textStyle(16),
      bodySmall: textStyle(12),
      headlineLarge: textStyle(20),
      headlineMedium: textStyle(16),
      headlineSmall: textStyle(12),
      titleLarge: textStyle(20),
      titleMedium: textStyle(16),
      titleSmall: textStyle(12),
      labelLarge: textStyle(20),
      labelMedium: textStyle(16),
    ),
    textSelectionTheme: textSelectionThemeData,
    primaryColor: isLight ? Colors.white : Colors.black,
    dividerTheme: isLight
        ? const DividerThemeData(color: Colors.grey)
        : DividerThemeData(color: Colors.grey[300]),
    buttonTheme: ButtonThemeData(
      buttonColor: isLight ? Colors.blueAccent : Colors.grey[300],
      textTheme: ButtonTextTheme.primary,
    ),
    cardTheme: CardTheme(
      color: isLight ? Colors.white : Colors.black,
      elevation: 1.0,
      shadowColor:
          isLight ? const Color.fromARGB(255, 255, 135, 135) : Colors.grey[800],
    ),
    hintColor: isLight ? Colors.grey : Colors.grey[300],
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: CustomColors.darkOrange,
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.all<Color?>(
        isLight ? Colors.blueAccent : Colors.grey[300],
      ),
    ),
  );
}

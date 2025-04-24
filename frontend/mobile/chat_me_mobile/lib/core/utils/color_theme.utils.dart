// ignore_for_file: non_constant_identifier_names

import 'package:chat_me_mobile/core/utils/cutom_colors.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

class ColorTheme {
  ColorTheme({this.brightness = Brightness.light}) {
    final bool isLight = brightness == Brightness.light;
    black_white = isLight ? Colors.black : Colors.white;
    grey500_black = isLight ? Colors.grey[500]! : Colors.black;
    blurDarkOrange_white = isLight ? CustomColors.darkOrange : Colors.white;

    /// canvas color [white_blueGrey]
    white_blueGrey = isLight ? Colors.white : CustomColors.blueGrey;
    shadow_grey_white =
        isLight ? Colors.grey[200] : const Color.fromARGB(36, 255, 255, 255);
  }

  final Brightness brightness;

  late Color black_white;
  late Color grey500_black;
  late Color blurDarkOrange_white;
  late Color white_blueGrey;
  late Color? shadow_grey_white;
}

@lazySingleton
class ColorThemeUtils {
  ColorTheme getColors(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Brightness brightness = theme.brightness;

    return ColorTheme(brightness: brightness);
  }
}

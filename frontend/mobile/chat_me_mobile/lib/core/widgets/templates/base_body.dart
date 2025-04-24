import 'package:chat_me_mobile/core/utils/color_theme.utils.dart';
import 'package:chat_me_mobile/dic/injection.dart';
import 'package:flutter/material.dart';

class BaseBody extends StatelessWidget {
  const BaseBody({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = getIt<ColorThemeUtils>().getColors(context);
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: colorTheme.white_blueGrey,
          border: const Border(
            top: BorderSide(width: 1, color: Colors.black12),
          ),
        ),
        margin: EdgeInsets.zero,
        child: child);
  }
}

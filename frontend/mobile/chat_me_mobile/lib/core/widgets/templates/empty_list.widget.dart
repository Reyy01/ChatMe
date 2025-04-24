import 'package:chat_me_mobile/core/utils/color_theme.utils.dart';
import 'package:chat_me_mobile/dic/injection.dart';
import 'package:flutter/material.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  final String title;
  final String subTitle;
  final String icon;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = getIt<ColorThemeUtils>().getColors(context);
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.all(32),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage(icon),
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 15),
            Text(
              title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: colorTheme.black_white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 20,
                color: colorTheme.black_white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomColor {}

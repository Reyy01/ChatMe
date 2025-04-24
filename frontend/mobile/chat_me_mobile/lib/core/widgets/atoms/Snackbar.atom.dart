import 'package:chat_me_mobile/core/utils/color_theme.utils.dart';
import 'package:chat_me_mobile/dic/injection.dart';
import 'package:delightful_toast/delight_toast.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:delightful_toast/toast/utils/enums.dart';
import 'package:flutter/material.dart';

void showSnackBar({
  required BuildContext context,
  required IconData toastIcon,
  required String? title,
  required String? subtitle,
}) {
  // DelightToastBar.removeAll();
  final ColorTheme colorTheme = getIt<ColorThemeUtils>().getColors(context);
  final ToastCard snackBar = ToastCard(
    leading: Icon(
      toastIcon,
      color: colorTheme.black_white,
    ),
    title: Text(
      title ?? '',
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Text(subtitle ?? ''),
    trailing: InkWell(
      onTap: () {
        DelightToastBar.removeAll();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.close,
          color: colorTheme.black_white,
        ),
      ),
    ),
    color: colorTheme.white_blueGrey,
    shadowColor: colorTheme.shadow_grey_white,
  );

  DelightToastBar(
    builder: (BuildContext context) => snackBar,
    autoDismiss: true,
    snackbarDuration: const Duration(seconds: 10),
    position: DelightSnackbarPosition.bottom,
  ).show(context);
}

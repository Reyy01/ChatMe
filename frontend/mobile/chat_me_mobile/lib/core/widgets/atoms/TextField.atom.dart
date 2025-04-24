import 'package:chat_me_mobile/core/utils/color_theme.utils.dart';
import 'package:chat_me_mobile/core/utils/cutom_colors.dart';
import 'package:chat_me_mobile/dic/injection.dart';
import 'package:flutter/material.dart';

class TextFieldAtom extends StatelessWidget {
  const TextFieldAtom({
    super.key,
    required this.globalKey,
    required this.focusNode,
    required this.controller,
    required this.textLabel,
    this.isPassword,
    this.iconData,
    this.onTapPasswordIcon,
    required this.validator,
    required this.onChanged,
  });

  final GlobalKey? globalKey;
  final TextEditingController controller;
  final FocusNode focusNode;
  final String textLabel;
  final bool? isPassword;
  final IconData? iconData;
  final Function()? onTapPasswordIcon;
  final String? Function(String?) validator;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = getIt<ColorThemeUtils>().getColors(context);
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          // color: Colors.grey[200],
        ),
        child: TextFormField(
          key: globalKey,
          validator: validator,
          controller: controller,
          focusNode: focusNode,
          onChanged: onChanged,
          obscureText: isPassword ?? false,
          style: TextStyle(
            color: colorTheme.grey500_black,
          ),
          decoration: InputDecoration(
            hintText: textLabel,
            hintStyle: TextStyle(
              color: colorTheme.grey500_black,
            ),
            filled: true,
            suffixIconColor: CustomColors.darkOrange,
            suffixIcon: iconData != null
                ? GestureDetector(
                    onTap: () {
                      onTapPasswordIcon!();
                    },
                    child: Icon(iconData),
                  )
                : null,
            fillColor: Colors.grey[200], // Background color
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.transparent,
              ), // Transparent border when unfocused
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: CustomColors.darkOrange,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ));
  }
}

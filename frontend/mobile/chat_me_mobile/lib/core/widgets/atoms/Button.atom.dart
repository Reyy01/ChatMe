import 'package:chat_me_mobile/core/utils/cutom_colors.dart';
import 'package:chat_me_mobile/core/widgets/atoms/LoadingIndicator.atom.dart';
import 'package:flutter/material.dart';

class ButtonAtom extends StatelessWidget {
  const ButtonAtom({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading,
  });

  final String text;
  final Function() onPressed;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ButtonStyle(
          elevation: WidgetStateProperty.all<double>(0),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          backgroundColor:
              WidgetStateProperty.all<Color>(CustomColors.darkOrange),
        ),
        child: isLoading ?? false
            ? const LoadingIndicatorAtom(loadingColor: Colors.white)
            : Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}

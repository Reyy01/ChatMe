import 'package:flutter/material.dart';

class LabelAtom extends StatelessWidget {
  const LabelAtom({
    super.key,
    required this.text,
    this.textStyle,
  });

  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}

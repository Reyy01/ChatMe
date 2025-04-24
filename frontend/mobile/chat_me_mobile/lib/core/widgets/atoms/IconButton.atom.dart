import 'package:flutter/material.dart';

class IconButtonAtom extends StatelessWidget {
  const IconButtonAtom({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.text,
  });

  final IconData icon;
  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        onPressed();
      },
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      label: Text(text),
      icon: Icon(icon),
    );
  }
}

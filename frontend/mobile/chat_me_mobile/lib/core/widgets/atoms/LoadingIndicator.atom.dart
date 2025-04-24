import 'package:flutter/material.dart';

class LoadingIndicatorAtom extends StatelessWidget {
  const LoadingIndicatorAtom({
    super.key,
    required this.loadingColor,
  });

  final Color loadingColor;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: loadingColor,
      strokeWidth: 2,
    );
  }
}

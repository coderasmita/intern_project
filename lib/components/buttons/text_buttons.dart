import 'package:flutter/material.dart';

class TextButtons extends StatelessWidget {
  const TextButtons({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(),
      child: Text(
        title,
        style: const TextStyle(color: Color(0xff983BF6)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.title,
    this.onPressed,
    this.width,
    this.height,
  });

  final String title;
  final Function()? onPressed;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize:
            Size(width ?? MediaQuery.sizeOf(context).width, height ?? 50),
      ),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}

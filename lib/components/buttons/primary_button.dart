import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    this.onPressed,
    this.icon,
    this.width,
    this.height,
  });

  final String title;
  final Function()? onPressed;
  final Widget? icon;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        // padding: const EdgeInsets.symmetric(
        //   horizontal: 64,
        //   vertical: 18,
        // ),
        shape: const StadiumBorder(),
        elevation: 0,
        backgroundColor: const Color(0xFF983BF6),
        minimumSize:
            Size(width ?? MediaQuery.sizeOf(context).width, height ?? 50),
      ),
      iconAlignment: IconAlignment.end,
      icon: icon,
      label: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

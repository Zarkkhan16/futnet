import 'package:flutter/material.dart';

class CustomClickableIcon extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final double? iconSize;
  final Color? color;

  const CustomClickableIcon({
    super.key,
    required this.onTap,
    required this.icon,
    this.iconSize,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon,
        color: color ?? Colors.white,
        size: iconSize ?? 30,
      ),
    );
  }
}

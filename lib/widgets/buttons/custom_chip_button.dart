import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomChipButton extends StatelessWidget {
  final String text;
  final double? textSized, borderThickness;
  final VoidCallback onTap;

  const CustomChipButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.textSized,
      this.borderThickness});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(180.r),
          border: Border.all(
            color: Colors.white,
            width: borderThickness ?? 2,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: textSized ?? 12,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futnet/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? textColor, buttonColor, borderColor;
  final Widget? leadingIcon;
  final bool? isPrimary;
  final double? borderWidth, elevation;
  final VoidCallback? onTap;

  const CustomButton({
    super.key,
    required this.text,
    this.isPrimary = true,
    this.textColor,
    this.buttonColor,
    this.borderColor,
    this.leadingIcon,
    this.borderWidth,
    this.elevation,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: elevation ?? 0,
      onPressed: onTap,
      height: isPrimary == false ? 40 : 45,
      minWidth: isPrimary == false ? 200 : double.infinity,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: borderColor ?? Colors.transparent,
          width: borderWidth ?? 1
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      color: buttonColor ?? AppColors.buttonColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 5.h),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            leadingIcon ?? Container(),
            Text(
              text,
              style: TextStyle(
                color: textColor ?? AppColors.textWhiteColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconsWithTexts extends StatelessWidget {
  final String text1, text2;
  final String icon1, icon2;

  const IconsWithTexts(
      {super.key,
      required this.text1,
      required this.text2,
      required this.icon1,
      required this.icon2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Image.asset(
            icon1,
            scale: 8,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            text1,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
            ),
          ),
        ),
        Expanded(
          child: Image.asset(
            icon2,
            scale: 8,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            text2,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
            ),
          ),
        ),
      ],
    );
  }
}

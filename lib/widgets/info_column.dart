import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoColumn extends StatelessWidget {
  final String topText;
  final String bottomText;
  final String? topSmallText;
  final double? topTextSize;
  final double? topSmallTextSize;

  const InfoColumn(
      {super.key,
      required this.topText,
      required this.bottomText,
      this.topSmallText,
      this.topTextSize,
      this.topSmallTextSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: topText,
            style: TextStyle(
              fontSize: topTextSize ?? 22.sp,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
            children: <TextSpan>[
              if (topSmallText != null)
                TextSpan(
                    text: topSmallText,
                    style: TextStyle(
                      fontSize: topSmallTextSize,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    )),
            ],
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          bottomText,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}

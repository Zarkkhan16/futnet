import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futnet/utils/app_colors.dart';

import '../../utils/images.dart';

class AuthBaseWidget extends StatelessWidget {
  final Widget child;
  final String headingText, subTitleText;
  final double? headingTextSize, subTitleTextSize;

  const AuthBaseWidget({
    super.key,
    required this.child,
    required this.headingText,
    required this.subTitleText,
    this.headingTextSize,
    this.subTitleTextSize,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.appAuthScreenBackgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 20.w, vertical: 120.0.h),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: headingText,
                      style: TextStyle(
                        fontSize: headingTextSize ?? 44.sp,
                        color: AppColors.textBlackColor,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: subTitleText,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: subTitleTextSize ?? 15.sp,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  child,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

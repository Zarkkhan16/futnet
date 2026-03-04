import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futnet/utils/images.dart';

import 'buttons/custom_chip_button.dart';

class ImageNameAddFriendWidget extends StatelessWidget {
  final String headingName;
  final String subTitleAge;
  final String profileImage;
  final VoidCallback onTap;
  final double? profileImageRadius, spaceBetweenText, headingSize, subTitleSize;

  const ImageNameAddFriendWidget({
    super.key,
    required this.headingName,
    required this.subTitleAge,
    required this.profileImage,
    required this.onTap,
    this.profileImageRadius,
    this.spaceBetweenText,
    this.headingSize,
    this.subTitleSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: profileImageRadius ?? 35.r,
              backgroundImage: AssetImage(profileImage),
            ),
            SizedBox(width: 15.w),
            RichText(
              text: TextSpan(
                text: "$headingName\n",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: headingSize ?? 16.sp),
                children: <InlineSpan>[
                  WidgetSpan(
                    child: SizedBox(height: spaceBetweenText ?? 22.h),
                  ),
                  TextSpan(
                    text: subTitleAge,
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w600,
                        fontSize: subTitleSize ?? 13.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
        CustomChipButton(
          text: "Add Friend",
          onTap: onTap,
        ),
      ],
    );
  }
}

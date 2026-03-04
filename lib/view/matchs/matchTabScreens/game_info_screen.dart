import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futnet/utils/images.dart';
import 'package:futnet/widgets/buttons/custom_button.dart';
import 'package:futnet/widgets/image_name_add_friend_widget.dart';
import 'package:futnet/widgets/info_column.dart';
import '../../../utils/app_constants.dart';

class GameInfoScreen extends StatelessWidget {
  const GameInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          children: [
            ImageNameAddFriendWidget(
              headingName: "Michal Johnson",
              subTitleAge: "40 Years - Right",
              profileImage: AppImages.stadiumBackgroundImage,
              onTap: (){},
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const InfoColumn(
                  topText: "\$4",
                  bottomText: 'Field Rental',
                ),
                SizedBox(
                  height: 60.h,
                  width: 10.w,
                  child: const VerticalDivider(
                    thickness: 1,
                    color: Colors.white70,
                  ),
                ),
                InfoColumn(
                    topText: "08:00",
                    topSmallText: 'PM',
                    topSmallTextSize: 12.sp,
                    bottomText: 'Time'),
                SizedBox(
                  height: 60.h,
                  width: 10.w,
                  child: const VerticalDivider(
                    thickness: 1,
                    color: Colors.white70,
                  ),
                ),
                InfoColumn(
                    topText: "\n",
                    topSmallText: "California",
                    topTextSize: 8.sp,
                    topSmallTextSize: 12.sp,
                    bottomText: "Venue's"),
                SizedBox(
                  height: 60.h,
                  width: 10.w,
                  child: const VerticalDivider(
                    thickness: 1,
                    color: Colors.white70,
                  ),
                ),
                InfoColumn(
                    topText: "April ",
                    topSmallText: '23',
                    topTextSize: 12.sp,
                    topSmallTextSize: 22.sp,
                    bottomText: 'Date'),
              ],
            ),
            SizedBox(height: 10.h),
            CustomButton(
              text: 'JOIN',
              onTap: () {},
            ),
            SizedBox(height: 10.h),
            Text(
              AppConstant.gameInfoText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.8),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futnet/utils/images.dart';
import 'package:futnet/widgets/baseWidget/home_base_widget.dart';
import 'package:futnet/widgets/buttons/custom_button.dart';
import 'package:futnet/widgets/icons/icons_with_texts.dart';
import 'package:futnet/widgets/image_name_add_friend_widget.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return HomeBaseWidget(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 90.h,),
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 180,
                  child: Image.asset(
                    AppImages.stadiumBackgroundImage,
                    scale: 3,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 8.h,
                  left: 15.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Find Event Near',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            height: 0.5.h),
                      ),
                      Text(
                        "Pompano Beach, FL",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w900,
                            height: 1.2.h),
                      ),
                      Text(
                        'Florida, USA',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Material(
              elevation: 1,
              color: Colors.black.withOpacity(0.001),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 18.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ImageNameAddFriendWidget(
                      headingName: "Michal Johnson",
                      headingSize: 13.sp,
                      subTitleAge: "40 Years - Right",
                      subTitleSize: 11.sp,
                      spaceBetweenText: 18.h,
                      profileImage: AppImages.stadiumBackgroundImage,
                      profileImageRadius: 30.r,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const IconsWithTexts(
                      text1: "Today",
                      text2: "8V8",
                      icon1: AppImages.calendarIcon,
                      icon2: AppImages.footballPlayerIcon,
                    ),
                    const IconsWithTexts(
                      text1: "Cypress Park",
                      text2: "22(6 available)",
                      icon1: AppImages.locationIcon,
                      icon2: AppImages.footballPlayerIcon,
                    ),
                    const IconsWithTexts(
                      text1: "\$5.5",
                      text2: "Florida, USA",
                      icon1: AppImages.dollarIcon,
                      icon2: AppImages.clockIcon,
                    ),
                    const IconsWithTexts(
                      text1: "08:30 PM",
                      text2: "Synthetic Grass",
                      icon1: AppImages.clockIcon,
                      icon2: AppImages.teamPlayerIcon,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            CustomButton(
              text: 'Confirm',
              onTap: () {},
              elevation: 5,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futnet/controllers/match_detail_controller.dart';
import 'package:futnet/utils/images.dart';
import 'package:futnet/widgets/buttons/custom_chip_button.dart';
import 'package:get/get.dart';

class TeamsListScreen extends StatefulWidget {
  const TeamsListScreen({super.key});

  @override
  _TeamsListScreenState createState() => _TeamsListScreenState();
}

class _TeamsListScreenState extends State<TeamsListScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MatchDetailController>(
      builder: (controller) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Confirmed Players 21",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Red Team ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Colors.white,
                              size: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      CustomChipButton(
                        textSized: 11,
                        borderThickness: 1,
                        text: 'Add Friend',
                        onTap: () {},
                      ),
                      SizedBox(width: 5.w),
                      CustomChipButton(
                        borderThickness: 1,
                        textSized: 11,
                        text: "Remove Friend",
                        onTap: () {},
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 8.h),
              Container(
                height: 470.h,
                decoration: BoxDecoration(
                  color: const Color(0xff000000).withOpacity(0.22),
                ),
                child: ListView.builder(
                  itemCount: controller.players.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 35.r,
                            backgroundImage: AssetImage(
                                controller.players[index].profileImage),
                          ),
                          title: Text(
                            controller.players[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16.sp,
                              color: Colors.white,
                            ),
                          ),
                          subtitle: Text(
                            "${controller.players[index].age} Year - ${controller.players[index].position}",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w600,
                                fontSize: 13.sp),
                          ),
                          trailing: Image.asset(
                            AppImages.redShirtImage,
                            scale: 8,
                          ),
                        ),
                        if (index != controller.players.length - 1)
                          Divider(
                            color: Colors.white24,
                            endIndent: 25.w,
                            indent: 25.w,
                          ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futnet/controllers/match_detail_controller.dart';
import 'package:futnet/view/matchs/rosterTabScreens/players_list_screen.dart';
import 'package:futnet/view/matchs/rosterTabScreens/teams_list_screen.dart';
import 'package:futnet/widgets/tabBar/custom_tab_bar.dart';
import 'package:get/get.dart';

class RosterScreen extends StatefulWidget {
  const RosterScreen({super.key});

  @override
  _RosterScreenState createState() => _RosterScreenState();
}

class _RosterScreenState extends State<RosterScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MatchDetailController>(builder: (controller) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: CustomTabBar(
              selectedTabIndex: controller.subSelectedTabIndex,
              onTabSelected: (index) {
                controller.updateSubTabIndex(index);
              },
              tabNames: const ["Players List", "Teams", "Share"], // Updated to use a list
              topLeftRadius: true,
              topRightRadius: true,
              bottomRightRadius: true,
              bottomLeftRadius: true,
              outerBorderRadius: 27.r,
              innerContainerHeight: 40.h,
              innerContainerPadding: 10.h,
            ),
          ),
          SizedBox(height: 20.h),
          if (controller.subSelectedTabIndex == 0) const PlayersListScreen(),
          if (controller.subSelectedTabIndex == 1) const TeamsListScreen(),
        ],
      );
    });
  }
}

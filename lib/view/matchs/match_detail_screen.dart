import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futnet/controllers/match_detail_controller.dart';
import 'package:futnet/view/matchs/matchTabScreens/game_info_screen.dart';
import 'package:futnet/view/matchs/matchTabScreens/roster_screen.dart';
import 'package:futnet/widgets/baseWidget/home_base_widget.dart';
import 'package:futnet/widgets/tabBar/custom_tab_bar.dart';
import 'package:get/get.dart';

class MatchDetailScreen extends StatefulWidget {
  const MatchDetailScreen({super.key});

  @override
  _MatchDetailScreenState createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen> {
  final MatchDetailController controller = Get.put(MatchDetailController());

  @override
  Widget build(BuildContext context) {
    return HomeBaseWidget(
      showBackButton: true,
      child: GetBuilder<MatchDetailController>(
        builder: (controller) => Column(
          children: [
            SizedBox(height: 10.h),
            Text(
              "FRIDAY NIGHT MATCH",
              style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.h),
            CustomTabBar(
              topLeftRadius: false,
              topRightRadius: false,
              bottomLeftRadius: false,
              bottomRightRadius: false,
              tabNames: const ['Game Info', 'Roster', 'Game Chat'], // Updated to use a list
              selectedTabIndex: controller.selectedTabIndex,
              onTabSelected: (index) {
                controller.updateTabIndex(index);
              },
            ),
            SizedBox(height: 30.h),
            if (controller.selectedTabIndex == 0) const GameInfoScreen(),
            if (controller.selectedTabIndex == 1) const RosterScreen(),
          ],
        ),
      ),
    );
  }
}

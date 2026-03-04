import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futnet/controllers/match_detail_controller.dart';
import 'package:futnet/widgets/custom_players_list_widget.dart';
import 'package:get/get.dart';

class PlayersListScreen extends StatelessWidget {
  const PlayersListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MatchDetailController>(
      builder: (controller) {
        return Column(
          children: [
            CustomPlayersListWidget(
              textPlayerListType:
                  "Confirmed Players (${controller.players.length})",
              moreButtonOnTap: () {},
              listCount: controller.players.take(4).length,
              players: controller.players,
            ),
            SizedBox(height: 10.h),
            CustomPlayersListWidget(
              textPlayerListType:
              "Invited Players (${controller.players.length})",
              moreButtonOnTap: () {},
              listCount: controller.players.take(4).length,
              players: controller.players,
            ),
            SizedBox(height: 10.h),
            CustomPlayersListWidget(
              textPlayerListType:
              "Not Going Players (${controller.players.length})",
              moreButtonOnTap: () {},
              listCount: controller.players.take(2).length,
              players: controller.players,
            ),
          ],
        );
      },
    );
  }
}

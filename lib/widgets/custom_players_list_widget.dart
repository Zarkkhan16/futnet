import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futnet/model/playerModel.dart';
import 'package:futnet/widgets/buttons/custom_chip_button.dart';

class CustomPlayersListWidget extends StatelessWidget {
  final String textPlayerListType;
  final int listCount;
  final List<PlayerInfo> players;
  final VoidCallback moreButtonOnTap;

  const CustomPlayersListWidget({
    super.key,
    required this.textPlayerListType,
    required this.moreButtonOnTap,
    required this.listCount,
    required this.players,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 12.h),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff000000).withOpacity(0.22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textPlayerListType,
                  style: TextStyle(color: Colors.white, fontSize: 14.sp),
                ),
                CustomChipButton(
                  text: "More...",
                  onTap: moreButtonOnTap,
                  textSized: 11,
                  borderThickness: 1,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 90.h,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: listCount,
              itemBuilder: (context, index) {
                final player = players[index];
                return SizedBox(
                  width: 90.w,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 23.r,
                        backgroundImage: AssetImage(player.profileImage),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        player.name,
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
                      ),
                      Text(
                        '${player.age} Years - ${player.position}',
                        overflow: TextOverflow.ellipsis,
                        style:
                            TextStyle(color: Colors.white70, fontSize: 9.sp),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

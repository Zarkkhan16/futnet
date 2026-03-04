import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futnet/utils/images.dart';
import 'package:futnet/view/matchs/match_detail_screen.dart';
import 'package:futnet/widgets/buttons/custom_clickable_icon.dart';
import 'package:get/get.dart';

class HomeBaseWidget extends StatefulWidget {
  final Widget child;
  final bool? showBackButton;

  const HomeBaseWidget(
      {super.key, required this.child, this.showBackButton = false});

  @override
  _HomeBaseWidgetState createState() => _HomeBaseWidgetState();
}

class _HomeBaseWidgetState extends State<HomeBaseWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.appBackgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomClickableIcon(
                        onTap: () {
                          widget.showBackButton!
                              ? Get.back()
                              : Get.to(() => const MatchDetailScreen());
                        },
                        icon: widget.showBackButton!
                            ? Icons.arrow_back_ios_new_rounded
                            : Icons.menu,
                      ),
                      Row(
                        children: [
                          CustomClickableIcon(
                            onTap: () {},
                            icon: Icons.message_outlined,
                          ),
                          SizedBox(width: 10.w),
                          CustomClickableIcon(
                            onTap: () {},
                            icon: Icons.search,
                          ),
                        ],
                      )
                    ],
                  ),
                  widget.child,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

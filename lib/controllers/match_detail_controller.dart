import 'package:futnet/model/playerModel.dart';
import 'package:futnet/utils/images.dart';
import 'package:get/get.dart';

class MatchDetailController extends GetxController {
  int selectedTabIndex = 0;
  int subSelectedTabIndex = 0;

  void updateTabIndex(int index) {
    selectedTabIndex = index;
    update();
  }

  void updateSubTabIndex(int index) {
    subSelectedTabIndex = index;
    update();
  }

  final List<PlayerInfo> players = [
    PlayerInfo(AppImages.stadiumBackgroundImage, "Michal Johnson", "Forward",
        "40", AppImages.redShirtImage),
    PlayerInfo(AppImages.stadiumBackgroundImage, "Michal Johnson", "Right",
        "38", AppImages.redShirtImage),
    PlayerInfo(AppImages.stadiumBackgroundImage, "Michal Johnson", "Right",
        "35", AppImages.redShirtImage),
    PlayerInfo(AppImages.stadiumBackgroundImage, "Michal Johnson", "Left", "30",
        AppImages.redShirtImage),
    PlayerInfo(AppImages.stadiumBackgroundImage, "Michal Johnson", "Left", "30",
        AppImages.redShirtImage),
    PlayerInfo(AppImages.stadiumBackgroundImage, "Michal Johnson", "Left", "30",
        AppImages.redShirtImage),
    PlayerInfo(AppImages.stadiumBackgroundImage, "Michal Johnson", "Left", "30",
        AppImages.redShirtImage),
    PlayerInfo(AppImages.stadiumBackgroundImage, "Michal Johnson", "Left", "30",
        AppImages.redShirtImage),
  ];
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatelessWidget {
  final List<String> tabNames;
  final double? outerBorderRadius, innerContainerHeight, innerContainerPadding;
  final bool topLeftRadius, topRightRadius, bottomLeftRadius, bottomRightRadius;
  final int selectedTabIndex;
  final Function(int) onTabSelected;

  const CustomTabBar({
    super.key,
    required this.selectedTabIndex,
    required this.onTabSelected,
    required this.tabNames, // Using a list for tabs
    this.outerBorderRadius,
    this.innerContainerPadding,
    this.innerContainerHeight,
    required this.topLeftRadius,
    required this.topRightRadius,
    required this.bottomLeftRadius,
    required this.bottomRightRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(outerBorderRadius ?? 0),
      ),
      child: Row(
        children: List.generate(tabNames.length, (index) {
          return _buildTabItem(index, tabNames[index]);
        }),
      ),
    );
  }

  Widget _buildTabItem(int index, String label) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTabSelected(index),
        child: Container(
          height: innerContainerHeight ?? 42.h,
          padding:
          EdgeInsets.symmetric(vertical: innerContainerPadding ?? 10.h),
          decoration: BoxDecoration(
            color: selectedTabIndex == index ? Colors.blue : Colors.transparent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(index == 0 && topLeftRadius ? 27 : 0),
              bottomLeft: Radius.circular(index == 0 && bottomLeftRadius ? 27 : 0),
              topRight: Radius.circular(index == tabNames.length - 1 && topRightRadius ? 27 : 0),
              bottomRight: Radius.circular(index == tabNames.length - 1 && bottomRightRadius ? 27 : 0),
            ),
          ),
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontWeight: selectedTabIndex == index
                  ? FontWeight.bold
                  : FontWeight.normal,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

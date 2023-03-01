import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:lib_utils/utils_bottom_tabBar/utils_bottom_tabBar_controller.dart';
import 'package:lib_utils/utils_bottom_tabBar/utils_bottom_tabBar_item.dart';

class UtilBottomTabBar extends StatelessWidget {
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final Color backgroundColor;
  final List<UtilsBottomTabBarItem> items;
  final Key bottomTabBarKey = GlobalKey();
  final navController = UtilsBottomTabBarController();
  UtilBottomTabBar(
      {Key? key,
      required this.selectedItemColor,
      required this.unselectedItemColor,
      required this.items,
      required this.backgroundColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        key: bottomTabBarKey,
        items: items
            .map(
              (UtilsBottomTabBarItem navItem) => BottomNavigationBarItem(
                  icon: Image.asset(""), label: navItem.title, tooltip: ""),
            )
            .toList(),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundColor,
        selectedItemColor: selectedItemColor,
        unselectedItemColor: unselectedItemColor,
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
    ;
  }
}

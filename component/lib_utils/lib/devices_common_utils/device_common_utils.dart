import 'package:flutter/cupertino.dart';

class UtilsCommonDeviceUnit extends StatelessWidget {
  /*
    * 微形设备
    * */
  final Widget tiny;
  /*
    * 手机
    * */
  final Widget phone;
  /*
    * pad
    * */
  final Widget iPad;
  /*
    * 大型平板电脑
    * */
  final Widget largeTablet;
  /*
    * 桌面
    * */
  final Widget desktop;

  const UtilsCommonDeviceUnit({
    super.key,
    required this.tiny,
    required this.phone,
    required this.iPad,
    required this.largeTablet,
    required this.desktop,
  });

  static const double tinyHeightLimit = 100;
  static double tinyLimit = 270;
  static double phoneLimit = 550;
  static double tabletLimit = 800;
  static double largeTabletLimit = 1024;
  static double desktopWidth = 1100;
  //4k分辨
  static double chekaWidth = 2460;

  static bool isTinyHeightLimit(BuildContext context) =>
      MediaQuery.of(context).size.height < tinyHeightLimit;

  static bool isTinyLimit(BuildContext context) =>
      MediaQuery.of(context).size.width < tinyLimit;

  static bool isPhone(BuildContext context) =>
      MediaQuery.of(context).size.width < phoneLimit &&
      MediaQuery.of(context).size.width >= tinyLimit;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < tabletLimit &&
      MediaQuery.of(context).size.width >= phoneLimit;

  static bool isLargeTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < largeTabletLimit &&
      MediaQuery.of(context).size.width >= tabletLimit;

  static bool isComputer(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeTabletLimit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < tinyLimit ||
            constraints.maxHeight < tinyHeightLimit) {
          return tiny;
        }
        if (constraints.maxWidth < phoneLimit) {
          return phone;
        }
        if (constraints.maxWidth < tabletLimit) {
          return iPad;
        }
        if (constraints.maxWidth < largeTabletLimit) {
          return largeTablet;
        } else {
          return desktop;
        }
      },
    );
  }
}

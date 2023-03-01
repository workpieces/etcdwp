import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lib_utils/base_widget/utils_base_view.dart';
import 'package:lib_utils/config/app_build_config.dart';
import 'package:lib_utils/devices_common_utils/device_common_utils.dart';
import 'package:lib_utils/preference/util_preference_manager.dart';
import 'package:logger/logger.dart';
import 'package:workpieceswebsite/Class/pages/home/wp_ws_home_desktop_page.dart';

class WorkpiecesWebsitesHomePage extends BaseView {
  WorkpiecesWebsitesHomePage({super.key});
  APPPreferenceManager preferenceManager =
      Get.find(tag: (APPPreferenceManager).toString());
  final Logger etcdLogger = APPBuildConfig.instance.config.logger;
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Color? pageBackgroundColor() {
    return Colors.white;
  }

  @override
  Widget body(BuildContext context) {
    return const UtilsCommonDeviceUnit(
      tiny: WPWSHomeDesktopPage(),
      largeTablet: WPWSHomeDesktopPage(),
      desktop: WPWSHomeDesktopPage(),
      iPad: WPWSHomeDesktopPage(),
      phone: WPWSHomeDesktopPage(),
    );
  }
}

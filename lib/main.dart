import 'package:flutter/material.dart';
import 'Class/config/cache/workpieces_websites_shared_preferences.dart';
import 'Class/pages/root/wp_ws_root_page.dart';
import 'package:lib_utils/lib_utils.dart';

Future<void> main() async {
  APPEnvConfig devConfig = APPEnvConfig(
    baseUrl: "http://127.0.0.1",
    shouldCollectCrashLog: true,
  );
  APPBuildConfig.instantiate(
    envType: APPEnvironment.release,
    envConfig: devConfig,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await WorkpiecesWebsiteSharedPreferences.init();
  runApp(const WorkpiecesWebsitesRootPage());
}

import 'package:workpieceswebsite/Class/routers/workpieces_websites_pages_routers_name.dart';
import 'package:get/get.dart';
import '../pages/home/wp_ws_home_page.dart';
import '../pages/root/wp_ws_root_bindings.dart';
class WorkpiecesWebsitesPagesRouter {
  WorkpiecesWebsitesPagesRouter._();
  static const initial = WorkpiecesWebsitesPagesRouterNames.main;
  static final routes = [
    GetPage(
      name: WorkpiecesWebsitesPagesRouterNames.main,
      page: () =>  WorkpiecesWebsitesHomePage(),
      binding:WorkpiecesWebsitesRootPageControllerBinding()
    ),
  ];
}
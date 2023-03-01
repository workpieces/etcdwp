import 'package:flutter/cupertino.dart';
import 'package:workpieceswebsite/Class/pages/home/wp_ws_home_desktop_menu_bar.dart';
import 'package:workpieceswebsite/Class/pages/home/wp_ws_home_page_title.dart';
import 'package:workpieceswebsite/Class/pages/home/wp_ws_home_desktop_home_page_banner.dart';
class WPWSHomeDesktopPageTop extends StatelessWidget {
  const WPWSHomeDesktopPageTop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: const Color(0xffffffff),
      height: height,
      child: Column(
        children: const [
          WPWSHomeDesktopMenuBar(),
          WPWSHomePageTitle(),
          Expanded(
              child: WPWSHomeDesktopHomePageBanner()
          )
        ],),
    );
  }
}

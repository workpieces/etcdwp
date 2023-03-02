import 'package:flutter/cupertino.dart';
import 'package:workpieceswebsite/Class/pages/home/mobile/wp_ws_home_mobile_banner.dart';
import 'package:workpieceswebsite/Class/pages/home/mobile/wp_ws_home_mobile_menu_bar.dart';
import 'package:workpieceswebsite/Class/pages/home/mobile/wp_ws_home_mobile_page_title.dart';

class WPWSHomeMobilePageTop extends StatelessWidget {
  const WPWSHomeMobilePageTop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: const Color(0xffffffff),
      height: height,
      child: Column(
        children: const [
          WPWSHomeMobileMenuBar(),
          WPWSHomePageMobileTitle(),
          Expanded(child: WPWSHomeDesktopHomePageMobileBanner())
        ],
      ),
    );
  }
}

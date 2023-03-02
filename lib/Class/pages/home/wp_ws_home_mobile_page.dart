import 'package:flutter/cupertino.dart';
import 'mobile/wp_ws_home_mobile_page_bottom.dart';
import 'mobile/wp_ws_home_mobile_page_top.dart';

class WPWSHomeMobilePage extends StatelessWidget {
  const WPWSHomeMobilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [WPWSHomeMobilePageTop(), WPWSHomeMobilePageBottom()],
      ),
    );
  }
}

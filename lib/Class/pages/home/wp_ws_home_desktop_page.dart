import 'package:flutter/material.dart';
import 'package:workpieceswebsite/Class/pages/home/wp_ws_home_desktop_page_bottom.dart';
import 'package:workpieceswebsite/Class/pages/home/wp_ws_home_desktop_page_top.dart';

class WPWSHomeDesktopPage extends StatefulWidget {
  const WPWSHomeDesktopPage({Key? key}) : super(key: key);
  @override
  State<WPWSHomeDesktopPage> createState() => _WPWSHomeDesktopPageState();
}

class _WPWSHomeDesktopPageState extends State<WPWSHomeDesktopPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [WPWSHomeDesktopPageTop(), WPWSHomeDesktopPageBottom()],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/common/workpieces_websites_common.dart';
import '../common/model/wp_ws_home_model.dart';
import '../common/model/wp_ws_home_privacy_model.dart';
import '../common/wp_ws_url_unit.dart';

class WPWSHomeDesktopPageBottom extends StatelessWidget {
  const WPWSHomeDesktopPageBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
        color: Colors.white,
        height: height,
        child: Column(
          children: const [
            Expanded(child: WPWSHomeDesktopPageBottomDetail()),
            WPWSHomeDesktopPageBottomPrivacyRelated(),
          ],
        ));
  }
}

class WPWSHomeDesktopPageBottomDetail extends StatelessWidget {
  const WPWSHomeDesktopPageBottomDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var itemWidth = (width * 0.5 - 10) * 0.5;
    var itemHeight = 150.0;
    var childAspectRatio = itemWidth / itemHeight;
    return SizedBox(
      width: width * 0.5,
      child: GridView.builder(
          itemCount: WPWSHomeModel.getLists.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: childAspectRatio),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              borderRadius: BorderRadius.circular((8.0)),
              child: SizedBox(
                width: width - 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      WPWSHomeModel.getLists[index].title,
                      style: GoogleFonts.sourceSerifPro(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                          color: Color(0xB5000000),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      WPWSHomeModel.getLists[index].message,
                      style: GoogleFonts.sourceSerifPro(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color(0xB5000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class WPWSHomeDesktopPageBottomPrivacyRelated extends StatelessWidget {
  const WPWSHomeDesktopPageBottomPrivacyRelated({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 280,
        child: Column(
          children: [
            InkWell(
                borderRadius: BorderRadius.circular(5.0),
                onTap: () {
                  WPWSURLUnit.openProducthunt();
                },
                child: Container(
                  height: 62,
                  width: 160,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular((10.0)),
                  ),
                  child: SvgPicture.asset("images/svg/producthunt.svg"),
                )),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  List.generate(WPWSHomePrivacyModel.getItems.length, (index) {
                return Row(children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(5.0),
                    onTap: WPWSHomePrivacyModel.getItems[index].onTap,
                    child: Container(
                        height: 30,
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 5, top: 5),
                        decoration: BoxDecoration(
                          color: const Color(0x3ff1f1f1),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular((5.0)),
                        ),
                        child: Center(
                          child: Text(
                            WPWSHomePrivacyModel.getItems[index].title,
                            style: GoogleFonts.sourceSerifPro(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xB2000000),
                              ),
                            ),
                          ),
                        )),
                  ),
                  const SizedBox(width: 15)
                ]);
              }),
            ),
            const SizedBox(height: 30),
            Center(
              child: Text(
                  "Etcd is a trademark of Etcd Ltd. Etcd Ltd reserves any rights therein. Any use of the etcdwp Application is for informational purposes \n only and does not imply any sponsorship, endorsement, or affiliation between Etcd and the etcdwp Application Program.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color(0xB2000000),
                    fontFamily: TextStyleConstant.fontFamily,
                  )),
            ),
            const SizedBox(height: 30)
          ],
        ));
  }
}

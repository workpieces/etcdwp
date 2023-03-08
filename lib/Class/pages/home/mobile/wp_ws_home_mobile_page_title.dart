import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/common/workpieces_websites_common.dart';
import '../../common/wp_ws_url_unit.dart';

class WPWSHomePageMobileTitle extends StatelessWidget {
  const WPWSHomePageMobileTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Text(
              "Modern GUI for Etcd",
              style: GoogleFonts.sourceSerifPro(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Text(
              "Etcdwp is a modern Etcd GUI designed for Mac.\nIt is trustworthy in critical situations.",
              style: GoogleFonts.sourceSerifPro(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xB5000000),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFf1f1f1),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular((8.0)),
              ),
              height: 44,
              width: 260,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "images/svg/score_icon.svg",
                    height: 11,
                    width: 80,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text("3.6 Based on user reviews",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xB5000000),
                        fontFamily: TextStyleConstant.fontFamily,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  WPWSURLUnit.openAPPStore();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFf1f1f1),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular((8.0)),
                  ),
                  height: 44,
                  width: 140,
                  child: SvgPicture.asset(
                    "images/svg/download.svg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  WPWSURLUnit.openDownloader();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF1CDEC9),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular((8.0)),
                  ),
                  height: 44,
                  width: 140,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text("macOS 10.14+",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              color: const Color(0xffffffff),
                              fontFamily: TextStyleConstant.fontFamily,
                            )),
                        const SizedBox(
                          height: 2,
                        ),
                        Text("Download Free Trial",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: const Color(0xffffffff),
                              fontFamily: TextStyleConstant.fontFamily,
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/common/workpieces_websites_common.dart';
import '../common/wp_ws_url_unit.dart';

class WPWSHomeDesktopMenuBar extends StatelessWidget {
  const WPWSHomeDesktopMenuBar({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 88,
      child: Center(
        child: SizedBox(
          width: width * 0.5,
          child: Row(
            children: [
              Image.asset(
                "images/logo/logo.png",
                width: 50,
                height: 50,
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                borderRadius: BorderRadius.circular((8.0)),
                child: Text("etcdwp",
                    style: GoogleFonts.sourceSerifPro(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Color(0xff000000),
                      ),
                    )),
              ),
              const Spacer(),
              // Container(
              //   height: 50,
              //   width: 100,
              //   decoration: BoxDecoration(
              //     color: const Color(0x72f1f1f1),
              //     shape: BoxShape.rectangle,
              //     borderRadius: BorderRadius.circular((8.0)),
              //   ),
              //   child: InkWell(
              //     borderRadius:BorderRadius.circular((8.0)),
              //     onTap: (){
              //
              //     },
              //     child:
              //     Center(
              //       child: Image.asset("images/icon/twitter.png"),
              //     ),),
              // ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color(0x72f1f1f1),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular((8.0)),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular((8.0)),
                  onTap: () {
                    WPWSURLUnit.openGithub();
                  },
                  child: Center(
                    child: Text(
                      "Documentation",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: const Color(0xb5000000),
                        fontFamily: TextStyleConstant.fontFamily,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                  color: const Color(0x72f1f1f1),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular((8.0)),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular((8.0)),
                  onTap: () {
                    WPWSURLUnit.openTwitter();
                  },
                  child: Center(
                    child: Image.asset(
                      "images/logo/twitter.png",
                      height: 30,
                      width: 30,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                  color: const Color(0x72f1f1f1),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular((8.0)),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular((8.0)),
                  onTap: () {
                    WPWSURLUnit.openGithub();
                  },
                  child: Center(
                    child: Image.asset(
                      "images/logo/github.png",
                      height: 25,
                      width: 25,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';

class TextStyleConstant {
  //主标题(Semi-bold)
  static TextStyle themeTextStyle = TextStyle(
    decoration: TextDecoration.none,
    color: const Color(0xff000000),
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.robotoMono().fontFamily,
    fontSize: 18,
  );
  //副标题 (Medium)
  static TextStyle subtitleTextStyle = TextStyle(
    decoration: TextDecoration.none,
    color: const Color(0x4c000000),
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.robotoMono().fontFamily,
    fontSize: 15,
  );
  //副标题 2 (Regular)
  static TextStyle subtitle2TextStyle = TextStyle(
    decoration: TextDecoration.none,
    color: const Color(0x4c000000),
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.robotoMono().fontFamily,
    fontSize: 15,
  );
  //主标题  (颜色)
  static const Color textColor = Color(0xFF000000);
  //fontFamily  (fontFamily)
  static const Color subtitleTextColor = Color(0x4c000000);
  //fontFamily  (fontFamily)
  static const Color subtitleBgTextColor = Color(0xB2D8D8D8);

  //fontFamily  (fontFamily)
  static const Color subtitleBg2TextColor = Color(0xB2f1f1f1);

  //fontFamily  (fontFamily)
  static String? fontFamily = GoogleFonts.poppins().fontFamily;
}

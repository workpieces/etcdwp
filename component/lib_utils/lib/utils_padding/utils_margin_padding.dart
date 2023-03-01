import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UtilsMarginPadding {
  static EdgeInsetsGeometry only(
      {double left = 0.0,
      double top = 0.0,
      double right = 0.0,
      double bottom = 0.0}) {
    return fromLTRB(left: left, top: top, right: right, bottom: bottom);
  }

  static EdgeInsets all(double margin) {
    return EdgeInsets.all(ScreenUtil().setSp(margin));
  }

  static EdgeInsets fromLTRB(
      {required double left,
      required double top,
      required double right,
      required double bottom}) {
    return EdgeInsets.only(
        left: ScreenUtil().setWidth(left),
        top: ScreenUtil().setHeight(top),
        right: ScreenUtil().setWidth(right),
        bottom: ScreenUtil().setHeight(bottom));
  }

  static EdgeInsets symmetric(
      {required double vertical, required double horizontal}) {
    return EdgeInsets.symmetric(
        vertical: ScreenUtil().setWidth(vertical),
        horizontal: ScreenUtil().setHeight(horizontal));
  }
}

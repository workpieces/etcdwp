import 'package:flutter/cupertino.dart';
import 'package:lib_utils/utils_padding/utils_margin_padding.dart';
import '../utils_gesture_detector/utils_my_click_event.dart';

extension WidgetExtension on Widget {
  Widget getPadding(double padding) {
    return Padding(padding: UtilsMarginPadding.all(padding), child: this);
  }

  Widget getPaddingLTRB(double left, double top, double right, double bottom) {
    return Padding(
        padding: UtilsMarginPadding.fromLTRB(
            left: left, top: top, right: right, bottom: bottom),
        child: this);
  }

  Widget getMargin(int margin) {
    return Container(
        padding: UtilsMarginPadding.all(margin.toDouble()), child: this);
  }

  Widget getMarginLTRB(double left, double top, double right, double bottom) {
    return Container(
        margin: UtilsMarginPadding.fromLTRB(
            left: left, top: top, right: right, bottom: bottom),
        child: this);
  }

  Widget insertTap(VoidCallback onPress, {bool userPreventRepeatClick = true}) {
    return userPreventRepeatClick
        ? UtilsMyClickEvent(onTap: onPress, child: this)
        : GestureDetector(onTap: onPress, child: this);
  }
}

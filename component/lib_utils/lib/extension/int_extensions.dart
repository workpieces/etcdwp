import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension UtilIntExtension on int {
  double get width {
    return ScreenUtil().setWidth(toDouble());
  }

  double get height {
    return ScreenUtil().setHeight(toDouble());
  }

  double get sp {
    return ScreenUtil().setSp(toDouble());
  }

  SizedBox get heightBox {
    return SizedBox(
      height: height,
    );
  }

  SizedBox get widthBox {
    return SizedBox(
      width: width,
    );
  }

  Future get millisecondsDelay async =>
      Future.delayed(Duration(milliseconds: this));
}

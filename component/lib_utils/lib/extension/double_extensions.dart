import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension UtilDoubleExtension on double {
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
}

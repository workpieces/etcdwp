import 'package:flutter/material.dart';

extension on String {
  double get parseDouble {
    return double.tryParse(this) ?? 0.0;
  }

  int get parseInt {
    return int.tryParse(this) ?? 0;
  }

  //字符转换成Color对象
  Color get toColor {
    Color color = Colors.white;
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      color = Color("0x$hexColor".parseInt);
    }
    return color;
  }
}

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class APPBlurWidget extends StatelessWidget {
  Widget child;
  Color color;
  double sigma;
  APPBlurWidget(this.child,
      {Key? key, required this.color, required this.sigma})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
      child: Container(
        color: color,
        child: child,
      ),
    );
  }
}

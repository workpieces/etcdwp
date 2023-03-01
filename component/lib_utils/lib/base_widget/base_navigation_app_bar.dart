import 'package:flutter/material.dart';

class BaseCustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final IconThemeData? iconThemeData;
  BaseCustomAppBar({
    Key? key,
    this.title,
    this.actions,
    this.leading,
    this.textStyle,
    this.backgroundColor,
    this.iconThemeData,
    this.automaticallyImplyLeading = true,
  }) : super(key: key);

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      elevation: 0,
      leading: leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      actions: actions,
      iconTheme: iconThemeData,
      title: (title != null) ? AppBarTitle(text: title) : Container(),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  final String? text;
  final TextStyle? textStyle;
  const AppBarTitle({Key? key, this.text, this.textStyle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: textStyle == null
          ? textStyle
          : const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 1.15,
              color: Colors.white),
      textAlign: TextAlign.center,
    );
  }
}

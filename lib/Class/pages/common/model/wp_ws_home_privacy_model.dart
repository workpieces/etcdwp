import 'package:flutter/cupertino.dart';

import '../wp_ws_url_unit.dart';

class WPWSHomePrivacyModel {
  final String title;
  final GestureTapCallback? onTap;
  WPWSHomePrivacyModel({required this.title, required this.onTap});

  static var getItems = [
    WPWSHomePrivacyModel(
        title: "Privacy Policy",
        onTap: () {
          WPWSURLUnit.openPrivacyPolicy();
        }),
    // WPWSHomePrivacyModel(
    //     title: "Terms",
    //     onTap: () {
    //       WPWSURLUnit.openPrivacyPolicy();
    //     }),
    WPWSHomePrivacyModel(
        title: "Feature Requests",
        onTap: () {
          WPWSURLUnit.openIssues();
        }),
    WPWSHomePrivacyModel(
        title: "Discussions",
        onTap: () {
          WPWSURLUnit.openDiscussions();
        }),
    WPWSHomePrivacyModel(
        title: "Email",
        onTap: () {
          WPWSURLUnit.openMailto();
        })
  ];
}

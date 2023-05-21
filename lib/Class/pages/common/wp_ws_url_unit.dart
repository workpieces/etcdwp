import 'package:lib_utils/utils_url_launcher/untils_url_launcher.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class WPWSURLUnit {
  static openGithub() {
    UrlLauncherUtil.openLauncherUtil(
        Uri.parse("https://github.com/workpieces/etcdwp"));
  }

  static openDeepAutoGithub() {
    UrlLauncherUtil.openLauncherUtil(
        Uri.parse("https://github.com/deepauto-io/DeepAuto-Chat"));
  }

  static openTwitter() {
    UrlLauncherUtil.openLauncherUtil(Uri.parse("https://twitter.com/etcdwp"));
  }

  static openAPPStore() {
    UrlLauncherUtil.openLauncherUtil(
        Uri.parse("https://apps.apple.com/cn/app/etcdwp/id1617626187?mt=12"));
  }

  static openDownloader() {
    UrlLauncherUtil.openLauncherUtil(Uri.parse(
        "https://github.com/workpieces/etcdwp/releases/download/v2.0.1/etcdwp.dmg"));
  }

  static openIssues() {
    UrlLauncherUtil.openLauncherUtil(
        Uri.parse("https://github.com/workpieces/etcdwp/issues"));
  }

  static openDiscussions() {
    UrlLauncherUtil.openLauncherUtil(
        Uri.parse("https://github.com/workpieces/etcdwp/discussions"));
  }

  static openMailto() async {
    final mailtoLink = Mailto(
      to: ["workpieces.app@gmail.com"],
      cc: [""],
      subject: "feedback",
    );
    await launch('$mailtoLink');
  }

  static openPrivacyPolicy() {
    UrlLauncherUtil.openLauncherUtil(
        Uri.parse("https://github.com/workpieces/etcdwp/wiki/privacy-en"));
  }

  static openProducthunt() {
    UrlLauncherUtil.openLauncherUtil(Uri.parse(
        "https://www.producthunt.com/posts/etcdwp?utm_source=badge-featured&utm_medium=badge&utm_souce=badge-etcdwp"));
  }
}

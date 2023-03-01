import 'package:url_launcher/url_launcher.dart';

class UrlLauncherUtil {
  //打开url
  static Future<void> openLauncherUtil(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  //打开手机浏览器
  static Future<void> openExternalApplicationLauncherUtil(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  static Future<void> openInWebViewOrVC(
      Uri url, Map<String, String> headers) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: WebViewConfiguration(headers: headers),
    )) {
      throw 'Could not launch $url';
    }
  }

  static Future<void> openInWebViewWithoutJavaScript(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: false),
    )) {
      throw 'Could not launch $url';
    }
  }

  static Future<void> openInWebViewWithoutDomStorage(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableDomStorage: false),
    )) {
      throw 'Could not launch $url';
    }
  }

  static Future<void> openUniversalLinkIos(Uri url) async {
    final bool nativeAppLaunchSucceeded = await launchUrl(
      url,
      mode: LaunchMode.externalNonBrowserApplication,
    );
    if (!nativeAppLaunchSucceeded) {
      await launchUrl(
        url,
        mode: LaunchMode.inAppWebView,
      );
    }
  }

  //检测url是否可以用
  static Future<void> checkCanLaunchUrl(
      Uri url, Function(bool result) onCallback) async {
    canLaunchUrl(url).then((bool result) {
      onCallback(result);
    });
  }
}

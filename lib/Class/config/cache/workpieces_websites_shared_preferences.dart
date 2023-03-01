import 'dart:ui';

import 'package:shared_preferences/shared_preferences.dart';

import '../translations/workpieces_website_globalization_service.dart';

class WorkpiecesWebsiteSharedPreferences {
  static late final SharedPreferences _preferenceManager;
  static init() async {
    _preferenceManager = await SharedPreferences.getInstance();
  }
  static const String _currentLocalKey = 'workpieces_website_current_local';
  static const String _lightThemeKey = 'workpieces_website_is_theme_light';

  /// set theme current type as light theme
  static void setThemeIsLight(bool lightTheme) =>
      _preferenceManager.setBool(_lightThemeKey, lightTheme);

  /// get if the current theme type is light
  static bool getThemeIsLight() =>
      _preferenceManager.getBool(_lightThemeKey) ?? false;

  /// save current locale
  static void setCurrentLanguage(String languageCode) =>
      _preferenceManager.setString(_currentLocalKey, languageCode);

  /// get current locale
  static Locale getCurrentLocal() {
    String? langCode = _preferenceManager.getString(_currentLocalKey) ?? "";
    // default language is english
    if (langCode.isEmpty) {
      return WorkpiecesWebsitesGlobalizationService.defaultLanguage;
    }
    return WorkpiecesWebsitesGlobalizationService.supportedLanguages[langCode]!;
  }
}
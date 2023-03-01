
import 'package:flutter/material.dart';

import '../translations/workpieces_website_globalization_service.dart';

class WorkpiecesWebsiteAppTheme {
  static ThemeData basic(
    BuildContext context,
  ) {
    return ThemeData(
      canvasColor: const Color(0xFFF9FAFE),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      primaryColor: Colors.white,
      dividerColor: const Color(0xFFD9DFFD),
      textTheme: WorkpiecesWebsitesGlobalizationService.supportedLanguagesTextTheme[
      WorkpiecesWebsitesGlobalizationService.getCurrentLocal().languageCode],
      fontFamily: WorkpiecesWebsitesGlobalizationService.supportedLanguagesFontsFamilies[
      WorkpiecesWebsitesGlobalizationService.getCurrentLocal().languageCode],
    );
  }
}

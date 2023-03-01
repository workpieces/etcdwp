import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lib_utils/config/app_build_config.dart';
import '../../config/theme/workpieces_websites_app_theme.dart';
import '../../config/translations/workpieces_website_globalization_service.dart';
import '../../config/workpieces_websites_intialbinding.dart';
import '../../routers/workpieces_websites_pages_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class WorkpiecesWebsitesRootPage extends StatefulWidget {
  const WorkpiecesWebsitesRootPage({Key? key}) : super(key: key);

  @override
  State<WorkpiecesWebsitesRootPage> createState() =>
      _WorkpiecesWebsitesRootPageState();
}

class _WorkpiecesWebsitesRootPageState
    extends State<WorkpiecesWebsitesRootPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1100, 750),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: "workpieces",
            initialRoute: WorkpiecesWebsitesPagesRouter.initial,
            initialBinding: WorkpiecesWebsitesBinding(),
            getPages: WorkpiecesWebsitesPagesRouter.routes,
            locale: WorkpiecesWebsitesGlobalizationService
                .defaultLanguage, // app language
            translations: WorkpiecesWebsitesGlobalizationService(),
            fallbackLocale:
                WorkpiecesWebsitesGlobalizationService.fallbackLocale,
            supportedLocales:
                WorkpiecesWebsitesGlobalizationService.supportedLocales,
            localizationsDelegates: const [
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate
            ],
            useInheritedMediaQuery: true,
            theme: WorkpiecesWebsiteAppTheme.basic(context),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}

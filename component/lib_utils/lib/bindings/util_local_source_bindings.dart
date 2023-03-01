import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../preference/util_preference_manager.dart';
import '../preference/util_preference_manager_impl.dart';

class UtilsLocalSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<APPPreferenceManager>(
      () => APPPreferenceManagerImpl(),
      tag: (APPPreferenceManager).toString(),
      fenix: true,
    );
  }
}

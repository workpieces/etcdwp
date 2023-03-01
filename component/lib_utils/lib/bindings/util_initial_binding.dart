import 'package:get/get.dart';
import 'package:lib_utils/bindings/util_local_source_bindings.dart';

class UtilsInitialBinding implements Bindings {
  @override
  void dependencies() {
    UtilsLocalSourceBindings().dependencies();
  }
}

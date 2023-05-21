import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:lib_utils/base_controller_view/utils_base_scaffold.dart';
import 'package:logger/logger.dart';
import '../base_controller_view/base_controller_view.dart';
import '../config/app_build_config.dart';

abstract class BaseView<Controller extends BaseController>
    extends GetView<Controller> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  final Logger logger = APPBuildConfig.instance.config.logger;

  BaseView({Key? key}) : super(key: key);
  Widget body(BuildContext context);
  PreferredSizeWidget? appBar(BuildContext context);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [annotatedRegion(context)],
      ),
    );
  }

  Widget annotatedRegion(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: pageScaffold(context),
    );
  }

  Widget pageScaffold(BuildContext context) {
    return Scaffold(
      //sets ios status bar color
      backgroundColor: pageBackgroundColor(),
      key: globalKey,
      appBar: appBar(context),
      floatingActionButton: floatingActionButton(),
      body: pageContent(context),
      bottomNavigationBar: bottomNavigationBar(),
      drawer: drawer(),
    );
  }

  Widget pageContent(BuildContext context) {
    return SafeArea(
      child: body(context),
    );
  }

  Widget? showErrorSnackBar(String message) {
    return null;
  }

  Color? pageBackgroundColor() {
    return null;
  }

  Color? statusBarColor() {
    return null;
  }

  Widget? floatingActionButton() {
    return null;
  }

  Widget? bottomNavigationBar() {
    return null;
  }

  Widget? drawer() {
    return null;
  }
}

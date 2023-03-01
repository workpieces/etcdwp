import 'package:logger/logger.dart';

class APPEnvConfig {
  final String baseUrl;
  final bool shouldCollectCrashLog;
  late final Logger logger;
  APPEnvConfig({
    required this.baseUrl,
    this.shouldCollectCrashLog = false,
  }) {
    logger = Logger(
      printer: PrettyPrinter(
          methodCount: 2,
          errorMethodCount: 2,
          lineLength: 188,
          colors: true,
          printEmojis: true,
          printTime: true),
    );
  }
}

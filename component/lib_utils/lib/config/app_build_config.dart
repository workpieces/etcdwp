import 'app_environment.dart';
import 'app_environment_config.dart';

class APPBuildConfig {
  late final APPEnvironment environment;
  late final APPEnvConfig config;
  bool _lock = false;
  static final APPBuildConfig instance = APPBuildConfig._internal();
  APPBuildConfig._internal();
  factory APPBuildConfig.instantiate({
    required APPEnvironment envType,
    required APPEnvConfig envConfig,
  }) {
    if (instance._lock) return instance;
    instance.environment = envType;
    instance.config = envConfig;
    instance._lock = true;
    return instance;
  }
}

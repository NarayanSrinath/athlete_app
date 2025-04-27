enum EnvironmentType { development, staging, production }

class Environment {
  static late EnvironmentType _environmentType;

  // Base URLs
  static late String apiBaseUrl;

  // Other environment-specific settings
  static const String appVersion = '1.0.0';
  static const String appName = 'Athlete App';

  // Initialize environment (call this at app startup)
  static void init(EnvironmentType envType) {
    _environmentType = envType;

    switch (envType) {
      case EnvironmentType.development:
        apiBaseUrl = 'https://dev-api.yourathleteapp.com/';
        break;
      case EnvironmentType.staging:
        apiBaseUrl = 'https://staging-api.yourathleteapp.com/';
        break;
      case EnvironmentType.production:
        apiBaseUrl = 'https://api.yourathleteapp.com/';
        break;
    }
  }

  // Helper to check current environment
  static bool get isProduction => _environmentType == EnvironmentType.production;
  static bool get isStaging => _environmentType == EnvironmentType.staging;
  static bool get isDevelopment => _environmentType == EnvironmentType.development;
}

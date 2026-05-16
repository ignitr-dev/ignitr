part of "package:core/core.dart";

class Ignitr {
  Ignitr._();

  static late IgnitrConfig config;

  static bool _initialized = false;

  static Future<void> initialize({
    required IgnitrConfig ignitrConfig,
    bool notifications = false,
    bool firebase = false,
    bool lockPortrait = false,
    bool enableHttpOverrides = true,
  }) async {
    config = ignitrConfig;

    if (_initialized) return;

    /// HTTP Overrides
    if (enableHttpOverrides) {
      HttpOverrides.global = AppHttpOverrides();
    }

    /// Local Storage
    await GetStorage.init();

    /// Firebase
    if (firebase) {
      await Firebase.initializeApp();
    }

    /// Notifications
    if (notifications) {
      final notificationService = NotificationService();
      await notificationService.init();
    }

    _initialized = true;
  }
}

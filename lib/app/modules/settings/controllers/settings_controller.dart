part of "../settings.dart";

class SettingsController extends AppController {
  static SettingsController get instance {
    if (!Get.isRegistered<SettingsController>()) Get.put(SettingsController());
    return Get.find<SettingsController>();
  }

  final settingStore = SettingStore.instance;

  /// Theme Switcher
  void swithThemeTo(String theme) {
    settingStore.update((value) => value.copyWith(theme: theme));
  }
}

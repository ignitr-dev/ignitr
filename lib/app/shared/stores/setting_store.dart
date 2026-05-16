part of "../shared.dart";

class SettingStore extends PersistentStore<SettingModel> {
  SettingStore() : super(SettingModel());

  static SettingStore get instance {
    if (!Get.isRegistered<SettingStore>()) {
      Get.put(SettingStore());
    }

    return Get.find<SettingStore>();
  }

  @override
  String get name => "settings";

  @override
  SettingModel fromStorage(data) => SettingModel.fromJson(data);

  @override
  toStorage(SettingModel value) => value.toJson();

  /// Get [ThemeMode] according to selected theme
  ThemeMode get themeMode => value.theme == "system"
      ? ThemeMode.system
      : value.theme == "light"
          ? ThemeMode.light
          : ThemeMode.dark;

  bool get themeIsSystem => themeMode == ThemeMode.system;
  bool get themeIsLight => themeMode == ThemeMode.light;
  bool get themeIsDark => themeMode == ThemeMode.dark;
}

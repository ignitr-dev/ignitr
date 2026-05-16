import "package:flutter/material.dart";
import "package:ignitr_template/app/modules/splash/splash.dart";
import "package:ignitr_template/app/shared/shared.dart";
import "package:ignitr_template/config.dart";
import "package:get/get.dart";

import "package:core/core.dart";
import "routes/router.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Ignitr.initialize(
    notifications: false,
    firebase: false,
    ignitrConfig: IgnitrConfig(
      apiBaseUrl: Config.apiBaseUrl,
      bodyFontFamily: Config.bodyFontFamily ?? "Inter",
      headingFontFamily: Config.headingFontFamily ?? "Poppins",
    ),
  );

  /// Set and lock device Orientation
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});
  final settingStore = SettingStore.instance;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.fadeIn,
        title: Config.appName,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: settingStore.themeMode,
        initialRoute: SplashRouter.index,
        getPages: routes,
      ),
    );
  }
}

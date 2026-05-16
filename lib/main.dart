import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:ignitr_template/app/modules/splash/splash.dart";
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
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: isDark ? AppColors.dark.primarySurface : AppColors.light.primarySurface,
        statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
        statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
      ),
    );

    return ThemeBuilder(
      builder: (context, themeMode) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.fadeIn,
          title: Config.appName,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeMode,
          initialRoute: SplashRouter.index,
          getPages: routes,
        );
      },
    );
  }
}

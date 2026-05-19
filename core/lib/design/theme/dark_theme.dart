part of "package:core/core.dart";

/// Input Border
OutlineInputBorder _darkInputBorder([Color? color]) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: color ?? kcSlate.shade100.withAlpha(alpha(0.3)),
      width: 1,
    ),
    borderRadius: BorderRadius.all(Radius.circular(4)),
  );
}

/// Input Theme
InputDecorationTheme _darkInputTheme() {
  return InputDecorationTheme(
    isDense: true,
    labelStyle: TextStyle(
      color: kcSlate.shade100,
    ),
    hintStyle: TextStyle(
      height: 1,
      fontSize: 14,
      color: kcSlate.shade100.withAlpha(alpha(0.5)),
    ),
    contentPadding:
        const EdgeInsets.symmetric(vertical: kSpacer3, horizontal: kSpacer4),
    border: _darkInputBorder(),
    enabledBorder: _darkInputBorder(),
    focusedBorder: _darkInputBorder(),
    errorBorder: _darkInputBorder(kcDanger),
  );
}

/// Icon Theme
IconThemeData _dartIconTheme = IconThemeData(
  color: kcSlate.shade100,
  size: 16.0,
);

/// Dark Text Theme
TextTheme _textThemeDark = TextTheme(
  displayLarge: TextStyle(
    fontSize: 30,
    fontFamily: Ignitr.config.headingFontFamily,
    fontWeight: FontWeight.w600,
    color: kcWhite,
  ),
  displayMedium: TextStyle(
    fontSize: 25,
    fontFamily: Ignitr.config.headingFontFamily,
    fontWeight: FontWeight.w600,
    color: kcWhite,
  ),
  displaySmall: TextStyle(
    fontSize: 20,
    fontFamily: Ignitr.config.headingFontFamily,
    fontWeight: FontWeight.w600,
    color: kcWhite,
  ),
  headlineMedium: TextStyle(
    fontFamily: Ignitr.config.headingFontFamily,
    fontWeight: FontWeight.w600,
    color: kcWhite,
  ),
  headlineSmall: TextStyle(
    fontFamily: Ignitr.config.headingFontFamily,
    fontWeight: FontWeight.w600,
    color: kcWhite,
  ),
  titleLarge: TextStyle(
    fontFamily: Ignitr.config.headingFontFamily,
    fontWeight: FontWeight.w600,
    color: kcWhite,
  ),
  bodyLarge: TextStyle(
    fontSize: 16.0,
    fontFamily: Ignitr.config.bodyFontFamily,
    color: kcSlate.shade100,
  ),
  bodyMedium: TextStyle(
    fontSize: 14.0,
    fontFamily: Ignitr.config.bodyFontFamily,
    color: kcSlate.shade100,
  ),
  labelLarge: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    fontFamily: Ignitr.config.bodyFontFamily,
    color: kcSlate.shade100,
  ),
);

/// Dark Theme
final ThemeData darkThemeData = ThemeData(
  brightness: Brightness.dark,
  iconTheme: _dartIconTheme,
  textTheme: _textThemeDark,
  scaffoldBackgroundColor: AppColors.dark.primarySurface,
  colorScheme: ColorScheme.dark(
    surface: AppColors.dark.primarySurface,
    brightness: Brightness.dark,
  ),
  primaryColor: AppColors.dark.accent,
  primaryColorLight: AppColors.dark.accent.withAlpha(alpha(0.875)),
  hintColor: AppColors.dark.accent,
  primarySwatch: generateMaterialColor(AppColors.dark.accent),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      backgroundColor: AppColors.dark.accent,
    ),
  ),
  buttonTheme: ButtonThemeData(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
  ),
  appBarTheme: AppBarTheme(
    elevation: 0.0,
    backgroundColor: AppColors.dark.primarySurface,
    iconTheme: IconThemeData(color: kcSlate.shade100, size: 24),
    toolbarTextStyle: TextTheme(
      titleLarge: TextStyle(
        color: AppColors.dark.primaryContent,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ).titleLarge,
    titleTextStyle: TextTheme(
      titleLarge: TextStyle(
        color: AppColors.dark.primaryContent,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ).titleLarge,
  ),
  inputDecorationTheme: _darkInputTheme(),
);

part of "package:core/core.dart";

class AppColors {
  static Color accent(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.accent
        : AppColors.dark.accent;
  }

  static Color accentContent(BuildContext context) {
    return getContrastColor(accent(context));
  }

  static Color success(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.success
        : AppColors.dark.success;
  }

  static Color info(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.info
        : AppColors.dark.info;
  }

  static Color warning(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.warning
        : AppColors.dark.warning;
  }

  static Color danger(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.danger
        : AppColors.dark.danger;
  }

  /// [primarySurface] returns the primary surface color based on the theme
  static Color primarySurface(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.primarySurface
        : AppColors.dark.primarySurface;
  }

  /// [primarySurfaceLight] returns the primary surface color based on the theme
  static Color primarySurfaceLight(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.primarySurfaceLight
        : AppColors.dark.primarySurfaceLight;
  }

  /// [primarySurfaceLighter] returns the primary surface color based on the theme
  static Color primarySurfaceLighter(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.primarySurfaceLighter
        : AppColors.dark.primarySurfaceLighter;
  }

  /// [primarySurfaceDark] returns the primary surface color based on the theme
  static Color primarySurfaceDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.primarySurfaceDark
        : AppColors.dark.primarySurfaceDark;
  }

  /// [primarySurfaceDarker] returns the primary surface color based on the theme
  static Color primarySurfaceDarker(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.primarySurfaceDarker
        : AppColors.dark.primarySurfaceDarker;
  }

  /// [primaryContent] returns the primary content color based on the theme
  static Color primaryContent(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.primaryContent
        : AppColors.dark.primaryContent;
  }

  /// [primaryContentLight] returns the primary content color based on the theme
  static Color primaryContentLight(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.primaryContentLight
        : AppColors.dark.primaryContentLight;
  }

  /// [primaryContentLighter] returns the primary content color based on the theme
  static Color primaryContentLighter(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.primaryContentLighter
        : AppColors.dark.primaryContentLighter;
  }

  /// [primaryContentDark] returns the primary content color based on the theme
  static Color primaryContentDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.primaryContentDark
        : AppColors.dark.primaryContentDark;
  }

  /// [primaryContentDarker] returns the primary content color based on the theme
  static Color primaryContentDarker(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.primaryContentDarker
        : AppColors.dark.primaryContentDarker;
  }

  /// [secondarySurface] returns the secondary surface color based on the theme
  static Color secondarySurface(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.secondarySurface
        : AppColors.dark.secondarySurface;
  }

  /// [secondarySurfaceLight] returns the secondary surface color based on the theme
  static Color secondarySurfaceLight(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.secondarySurfaceLight
        : AppColors.dark.secondarySurfaceLight;
  }

  /// [secondarySurfaceLighter] returns the secondary surface color based on the theme
  static Color secondarySurfaceLighter(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.secondarySurfaceLighter
        : AppColors.dark.secondarySurfaceLighter;
  }

  /// [secondarySurfaceDark] returns the secondary surface color based on the theme
  static Color secondarySurfaceDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.secondarySurfaceDark
        : AppColors.dark.secondarySurfaceDark;
  }

  /// [secondarySurfaceDarker] returns the secondary surface color based on the theme
  static Color secondarySurfaceDarker(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.secondarySurfaceDarker
        : AppColors.dark.secondarySurfaceDarker;
  }

  /// [secondaryContent] returns the secondary content color based on the theme
  static Color secondaryContent(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.secondaryContent
        : AppColors.dark.secondaryContent;
  }

  /// [secondaryContentLight] returns the secondary content color based on the theme
  static Color secondaryContentLight(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.secondaryContentLight
        : AppColors.dark.secondaryContentLight;
  }

  /// [secondaryContentLighter] returns the secondary content color based on the theme
  static Color secondaryContentLighter(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.secondaryContentLighter
        : AppColors.dark.secondaryContentLighter;
  }

  /// [secondaryContentDark] returns the secondary content color based on the theme
  static Color secondaryContentDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.secondaryContentDark
        : AppColors.dark.secondaryContentDark;
  }

  /// [secondaryContentDarker] returns the secondary content color based on the theme
  static Color secondaryContentDarker(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors.light.secondaryContentDarker
        : AppColors.dark.secondaryContentDarker;
  }

  /// Light Theme Colors
  static final AppColorModel light = lightColors;

  /// Dark Theme Colors
  static final AppColorModel dark = darkColors;
}

/// [lightColors] returns [AppColorModel] containing light theme colors
final AppColorModel lightColors = AppColorModel(
  /// Theme Colors
  accent: kcAccent,
  danger: kcDanger,
  success: kcSuccess,
  info: kcInfo,
  warning: kcWarning,

  /// Primary Colors
  primarySurfaceLighter: kcWhite,
  primarySurfaceLight: kcWhite,
  primarySurface: kcWhite,
  primarySurfaceDark: kcSlate.shade200,
  primarySurfaceDarker: kcSlate.shade400,

  primaryContentLighter: kcSlate.shade700,
  primaryContentLight: kcSlate.shade700,
  primaryContent: kcSlate.shade600,
  primaryContentDark: kcSlate.shade600,
  primaryContentDarker: kcSlate.shade600,

  /// Secondary Colors
  secondarySurfaceLighter: kcSlate.shade50,
  secondarySurfaceLight: kcSlate.shade100.withAlpha(alpha(0.75)),
  secondarySurface: kcSlate.shade100,
  secondarySurfaceDark: kcSlate.shade200,
  secondarySurfaceDarker: kcSlate.shade300,

  secondaryContentLighter: kcSlate.shade800,
  secondaryContentLight: kcSlate.shade700,
  secondaryContent: kcSlate.shade600,
  secondaryContentDark: kcSlate.shade700,
  secondaryContentDarker: kcSlate.shade800,
);

/// [darkColors] returns [AppColorModel] containing dark theme colors
final AppColorModel darkColors = AppColorModel(
  /// Theme Colors
  accent: kcAccent,
  danger: kcDanger,
  success: kcSuccess,
  info: kcInfo,
  warning: kcWarning,

  /// Primary Colors
  primarySurfaceLighter: kcSlate.shade600,
  primarySurfaceLight: kcSlate.shade700,
  primarySurface: kcSlate.shade800,
  primarySurfaceDark: kcSlate.shade900,
  primarySurfaceDarker: kcSlate.shade900,

  primaryContentLighter: kcSlate.shade50,
  primaryContentLight: kcSlate.shade100,
  primaryContent: kcSlate.shade100,
  primaryContentDark: kcSlate.shade200,
  primaryContentDarker: kcSlate.shade300,

  /// Secondary Colors
  secondarySurfaceLighter: kcSlate.shade500,
  secondarySurfaceLight: kcSlate.shade600,
  secondarySurface: kcSlate.shade700,
  secondarySurfaceDark: kcSlate.shade800,
  secondarySurfaceDarker: kcSlate.shade900,

  secondaryContentLighter: kcZinc.shade50,
  secondaryContentLight: kcZinc.shade100,
  secondaryContent: kcZinc.shade100,
  secondaryContentDark: kcZinc.shade200,
  secondaryContentDarker: kcZinc.shade300,
);

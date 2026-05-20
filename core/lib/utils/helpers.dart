part of "package:core/core.dart";

/// Retuns full asset image path
String assetImage(String name) {
  return "assets/images/$name";
}

/// Retuns full asset icon path
String assetIcon(String name) {
  return "assets/icons/$name";
}

/// PrettyLogger to log something with
/// formatted and colored text
var log = Logger(
  printer: PrettyPrinter(),
);

/// Generates & returns [MaterialColor] from [Color]
MaterialColor generateMaterialColor(Color color) {
  int argbValue = (color.a * 255).toInt() << 24 | color.r.toInt() << 16 | color.g.toInt() << 8 | color.b.toInt();

  return MaterialColor(argbValue, {
    50: _tintColor(color, 0.9),
    100: _tintColor(color, 0.8),
    200: _tintColor(color, 0.6),
    300: _tintColor(color, 0.4),
    400: _tintColor(color, 0.2),
    500: color,
    600: _shadeColor(color, 0.1),
    700: _shadeColor(color, 0.2),
    800: _shadeColor(color, 0.3),
    900: _shadeColor(color, 0.4),
  });
}

int _tintValue(int value, double factor) => max(0, min((value + ((255 - value) * factor)).round(), 255));

Color _tintColor(Color color, double factor) => Color.fromRGBO(_tintValue(color.r.toInt(), factor), _tintValue(color.g.toInt(), factor), _tintValue(color.b.toInt(), factor), 1);

int _shadeValue(int value, double factor) => max(0, min(value - (value * factor).round(), 255));

Color _shadeColor(Color color, double factor) => Color.fromRGBO(
      _shadeValue(color.r.toInt(), factor),
      _shadeValue(color.g.toInt(), factor),
      _shadeValue(color.b.toInt(), factor),
      1,
    );

/// Converts decimal value to alpha value
///
/// Generally used for [Color]
int alpha(double opacity) {
  return (255 * opacity).toInt();
}

/// Returns contrast [Color] for provided [Color]
Color getContrastColor(Color color) {
  int d = 0;

  double luminance = (0.299 * color.r + 0.587 * color.g + 0.114 * color.b) / 255;

  if (luminance > 0.7) {
    d = 0;
  } else {
    d = 255;
  }

  return Color.fromARGB(color.a.toInt() * 255, d, d, d);
}

/// Created an [Str] instance
Str str(String text) => Str(text);

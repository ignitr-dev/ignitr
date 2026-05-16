part of "package:core/core.dart";

class Str {
  ReCase text = ReCase("");
  Str(String txt) {
    text = ReCase(txt);
  }

  static Str of(String txt) {
    return Str(txt);
  }

  String ucFirst() {
    return text.sentenceCase;
  }

  String sentenceCase() {
    return text.sentenceCase;
  }

  String slug() {
    return text.paramCase;
  }

  String param() {
    return text.paramCase;
  }

  String toLower() {
    return text.originalText.toLowerCase();
  }

  String toUpper() {
    return text.originalText.toUpperCase();
  }

  String snake() {
    return text.snakeCase;
  }

  String title() {
    return text.titleCase;
  }

  String pascal() {
    return text.pascalCase;
  }

  String dot() {
    return text.dotCase;
  }

  String path() {
    return text.pathCase;
  }

  String header() {
    return text.headerCase;
  }

  String constant() {
    return text.constantCase;
  }
}

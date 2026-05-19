part of "package:core/core.dart";

class Storage {
  static final GetStorage _box = GetStorage();

  static Future<void> put<T>(
    String key,
    T value, {
    Map<String, dynamic> Function(T value)? toJson,
  }) async {
    if (value is String ||
        value is int ||
        value is double ||
        value is bool ||
        value is List ||
        value is Map) {
      await _box.write(key, value);
    } else {
      if (toJson == null) {
        throw Exception(
          "toJson() must be provided for non-primitive types",
        );
      }
      await _box.write(key, jsonEncode(toJson(value)));
    }
  }

  static T? get<T>(
    String key, {
    T Function(Map<String, dynamic> json)? fromJson,
  }) {
    final data = _box.read(key);

    if (data == null) return null;

    if (T == String ||
        T == int ||
        T == double ||
        T == bool ||
        T == List ||
        T == Map) {
      return data as T;
    }

    if (fromJson != null) {
      final decoded = data is String ? jsonDecode(data) : data;
      return fromJson(decoded);
    }

    throw Exception(
      "fromJson() must be provided for non-primitive types",
    );
  }

  static Future<void> delete(String key) async {
    await _box.remove(key);
  }

  static Future<void> clear() async {
    await _box.erase();
  }
}

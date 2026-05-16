part of "package:core/core.dart";

abstract class FileStore<T> extends Store<T> {
  FileStore(super.initialValue);

  /// Unique file identifier
  String get name;

  /// Convert json -> model
  T fromJson(dynamic json);

  /// Convert model -> json
  dynamic toJson(T value);

  File? _file;

  @override
  void onInit() {
    super.onInit();

    _initialize();
  }

  Future<void> _initialize() async {
    try {
      final directory = await getApplicationDocumentsDirectory();

      _file = File(
        "${directory.path}/$name.json",
      );

      /// Create file if missing
      if (!await _file!.exists()) {
        await _file!.create(recursive: true);

        await _save(value);
      } else {
        await _load();
      }

      addListener(_listener);
    } catch (e) {
      // Optional: log error
    }
  }

  void _listener() {
    _save(value);
  }

  Future<void> _load() async {
    try {
      if (_file == null) return;

      final content = await _file!.readAsString();

      if (content.trim().isEmpty) return;

      final decoded = jsonDecode(content);

      value = fromJson(decoded);
    } catch (e) {
      await clear();
    }
  }

  Future<void> _save(T val) async {
    try {
      if (_file == null) return;

      if (_isNull(val)) {
        await clear();
        return;
      }

      final encoded = jsonEncode(
        toJson(val),
      );

      await _file!.writeAsString(encoded);
    } catch (e) {
      // Optional: log error
    }
  }

  /// Delete file and reset value
  Future<void> clear() async {
    try {
      if (_file != null && await _file!.exists()) {
        await _file!.delete();
      }
    } catch (_) {}

    value = emptyValue;
  }

  /// Override for non-nullable stores
  T get emptyValue => null as T;

  bool _isNull(T val) {
    return val == null;
  }

  @override
  void dispose() {
    removeListener(_listener);

    super.dispose();
  }
}

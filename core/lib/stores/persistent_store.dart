part of "package:core/core.dart";

abstract class PersistentStore<T> extends Store<T> {
  String get name;

  T fromStorage(dynamic data);
  dynamic toStorage(T value);

  PersistentStore(super.initial) {
    _load();
    listen(_save);
  }

  void _load() {
    try {
      final stored = Storage.get<T?>(name, fromJson: fromStorage);

      if (stored != null) {
        value = stored;
      }
    } catch (e) {
      Storage.delete(name);
    }
  }

  void _save(T val) {
    try {
      if (_isNull(val)) {
        Storage.delete(name);
      } else {
        Storage.put(name, toStorage(val));
      }
    } catch (e) {
      // Optional: log error
    }
  }

  /// 🔥 Safe clear (better than setting null manually)
  void clear() {
    Storage.delete(name);
    value = _emptyValue();
  }

  /// 👇 Override if T is non-nullable
  T _emptyValue() {
    return null as T;
  }

  /// 👇 Handles nullable generics safely
  bool _isNull(T val) {
    try {
      return val == null;
    } catch (_) {
      return false;
    }
  }
}

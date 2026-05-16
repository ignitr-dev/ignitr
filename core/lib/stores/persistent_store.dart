part of "package:core/core.dart";

abstract class PersistentStore<T> extends Store<T> {
  PersistentStore(super.initialValue);

  String get name;

  T fromStorage(dynamic data);

  dynamic toStorage(T value);

  @override
  void onInit() {
    super.onInit();

    _load();

    addListener(_listener);
  }

  void _listener() {
    _save(value);
  }

  void _load() {
    try {
      final stored = Storage.get(name);

      if (stored != null) {
        value = fromStorage(stored);
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
        Storage.put(
          name,
          toStorage(val),
        );
      }
    } catch (e) {
      // Optional: log error
    }
  }

  /// Clear store and reset value
  void clear() {
    Storage.delete(name);

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

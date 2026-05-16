part of "package:core/core.dart";

abstract class Store<T> extends ValueNotifier<T> {
  Store(super.initialValue) {
    onInit();
  }
  T call() => value;
  void update(T Function(T current) cb) {
    value = cb(value);
  }

  void reset() {}
  void onInit() {}
  void onDispose() {}

  @override
  void dispose() {
    onDispose();
    super.dispose();
  }
}

// abstract class Store<T> {
//   final Rx<T> _data;

//   Store(T initial) : _data = initial.obs {
//     onInit();
//   }

//   T get value => _data.value;
//   set value(T val) => _data.value = val;

//   T call() => value;

//   void update(T Function(T current) cb) => value = cb(value);

//   void listen(void Function(T val) fn) => ever(_data, fn);

//   void reset() {}
//   void onInit() {}
//   void onDispose() {}
// }

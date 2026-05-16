part of "../shared.dart";

class AuthStore extends PersistentStore<AuthModel?> {
  AuthStore() : super(null);

  static AuthStore get instance {
    if (!Get.isRegistered<AuthStore>()) {
      Get.put(AuthStore());
    }

    return Get.find<AuthStore>();
  }

  @override
  String get name => "auth_session";

  @override
  AuthModel? fromStorage(data) => AuthModel.fromJson(data);

  @override
  toStorage(AuthModel? value) => value?.toJson();

  String? get token => value?.token;
  UserModel? get user => value?.user;
  bool get isLoggedIn => value != null;

  bool check() => value != null;
}

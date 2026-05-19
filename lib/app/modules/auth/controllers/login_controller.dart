part of "../auth.dart";

class LoginController extends AppController {
  static LoginController get instance {
    if (!Get.isRegistered<LoginController>()) Get.put(LoginController());
    return Get.find<LoginController>();
  }

  final _authClient = AuthClient.instance;
  final _auth = AuthStore.instance;

  /// Variables
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController identifierInput = TextEditingController();
  final TextEditingController passwordInput = TextEditingController();

  Future<void> submit() async {
    if (!formKey.currentState!.validate()) return;
    await attempt();
  }

  Future<void> attempt() async {
    try {
      /// Prepare form data to be sent to server
      Map<String, dynamic> body = {
        "identifier": identifierInput.text,
        "password": passwordInput.text,
      };

      /// Call api to login user
      ApiResponse response = await _authClient.login(body: body);
      if (!response.isSuccess) {
        Toastr.of(Get.context!).show(message: "${response.error}");
        return;
      }

      /// Update Auth State
      _auth.value = AuthModel(
          token: response.data["token"],
          user: UserModel.fromJson(response.data["user"]));

      /// Redirect user
      Get.offAllNamed("/dashboard");
    } on Exception catch (e) {
      Get.to(() => ErrorPage(message: e.toString()));
    }
  }
}

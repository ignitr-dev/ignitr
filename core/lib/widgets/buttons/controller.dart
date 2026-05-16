part of "package:core/core.dart";

class ButtonController extends GetxController {
  static ButtonController get instance {
    if (!Get.isRegistered<ButtonController>()) Get.create(() => ButtonController());
    return Get.find<ButtonController>();
  }

  final RxBool _isBusy = RxBool(false);
  final RxBool _isDisabled = RxBool(false);

  bool get isBusy => _isBusy.value;

  bool get isDisabled => _isDisabled.value;

  ButtonController setBusy(bool val) {
    _isBusy(val);
    return this;
  }

  ButtonController setDisabled(bool val) {
    _isDisabled(val);
    return this;
  }
}

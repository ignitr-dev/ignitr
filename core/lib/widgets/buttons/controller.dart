part of "package:core/core.dart";

class ButtonController extends ChangeNotifier {
  bool _isBusy = false;
  bool _isDisabled = false;

  bool get isBusy => _isBusy;
  bool get isDisabled => _isDisabled;

  void setBusy(bool val) {
    _isBusy = val;
    notifyListeners();
  }

  void setDisabled(bool val) {
    _isDisabled = val;
    notifyListeners();
  }
}

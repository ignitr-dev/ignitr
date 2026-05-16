part of "package:core/core.dart";

class Toastr {
  final BuildContext context;

  Toastr._(this.context);

  static Toastr of(BuildContext context) => Toastr._(context);

  void success({
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    _show(
      message: message,
      backgroundColor: Colors.green,
      textColor: Colors.grey.shade900,
      icon: Icons.info_outline,
      duration: duration,
    );
  }

  void error({
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    _show(
      message: message,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      icon: Icons.error,
      duration: duration,
    );
  }

  void info({
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    _show(
      message: message,
      backgroundColor: Colors.blueAccent,
      textColor: Colors.white,
      icon: Icons.info,
      duration: duration,
    );
  }

  void warning({
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    _show(
      message: message,
      backgroundColor: Colors.amber.shade700,
      textColor: Colors.grey.shade900,
      icon: Icons.warning,
      duration: duration,
    );
  }

  void show({
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    final snackBar = SnackBar(
      duration: duration,
      backgroundColor: Colors.black.withValues(alpha: 0.95),
      behavior: SnackBarBehavior.fixed,
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      content: Text(
        Str.of(message).ucFirst(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  void _show({
    required String message,
    required Color backgroundColor,
    required Color textColor,
    required IconData icon,
    required Duration duration,
    bool floating = true,
  }) {
    final snackBar = SnackBar(
      duration: duration,
      backgroundColor: backgroundColor,
      behavior: floating ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
      margin: floating
          ? EdgeInsets.only(
              left: kSpacer2,
              right: kSpacer2,
              bottom: kSpacer,
            )
          : EdgeInsets.zero,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      content: Row(
        children: [
          Icon(icon, color: textColor),
          SizedBox(width: kSpacer2),
          Expanded(
            child: Text(
              Str.of(message).ucFirst(),
              style: TextStyle(
                color: textColor,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

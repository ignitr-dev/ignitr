part of "package:core/core.dart";

class ThemeBuilder extends StatefulWidget {
  final Widget Function(BuildContext context, ThemeMode themeMode) builder;
  const ThemeBuilder({super.key, required this.builder});

  @override
  _ThemeBuilderState createState() => _ThemeBuilderState();

  static _ThemeBuilderState? of(BuildContext context) {
    return context.findAncestorStateOfType<_ThemeBuilderState>();
  }
}

class _ThemeBuilderState extends State<ThemeBuilder> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  void initState() {
    super.initState();
    loadTheme();
    if (mounted) setState(() {});
  }

  void changeThemeTo(String mode) {
    Storage.put<String>("theme_mode", mode);
    loadTheme();
  }

  void loadTheme() {
    var mode = Storage.get<String>("theme_mode");
    if (mode == null) {
      mode = "system";
      Storage.put("theme_mode", mode);
    }

    setState(() {
      _themeMode = mode == "light"
          ? ThemeMode.light
          : mode == "dark"
              ? ThemeMode.dark
              : ThemeMode.system;
    });
  }

  ThemeMode getCurrentTheme() {
    return _themeMode;
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _themeMode);
  }
}

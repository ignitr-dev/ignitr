part of "../../shared.dart";

class MasterLayout extends StatelessWidget {
  final Widget body;
  final Drawer? drawer;
  final Color? backgroundColor;
  final dynamic title;
  final List<Widget>? actions;

  const MasterLayout({
    super.key,
    required this.body,
    this.drawer,
    this.backgroundColor,
    this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: backgroundColor ?? AppColors.primarySurface(context),
      appBar: AppBar(
        elevation: 0,
        title: title is String
            ? Text(
                "${title ?? Config.appName}",
              )
            : title,
        actions: actions,
      ),
      drawer: drawer,
      body: SafeArea(
        child: body,
      ),
    );
  }
}

part of "../../shared.dart";

class AuthLayout extends StatelessWidget {
  final Widget body;
  final Color? backgroundColor;

  const AuthLayout({super.key, required this.body, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? AppColors.primarySurface(context),
      body: SafeArea(
        child: body,
      ),
    );
  }
}

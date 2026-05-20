part of "../splash.dart";

class SplashPage extends StatelessWidget {
  SplashPage({super.key});
  final SplashController controller = SplashController.instance;

  @override
  Widget build(BuildContext context) {
    final Size screen = Get.size;
    return Scaffold(
      backgroundColor: AppColors.primarySurface(context),
      body: SizedBox(
        height: screen.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(
              assetImage("logo.png"),
              width: screen.width * 0.5,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: kSpacer8),
              child: LoadingIcon(height: kSpacer, color: AppColors.accent(context)),
            ),
          ],
        ),
      ),
    );
  }
}

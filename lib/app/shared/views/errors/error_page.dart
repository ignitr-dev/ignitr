part of "../../shared.dart";

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    super.key,
    required this.message,
    this.action,
    this.actionLabel = "Retry",
  });

  final String message;
  final VoidCallback? action;
  final String actionLabel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kSpacer8),
              child: SvgPicture.asset(
                assetIcon("server_error.svg"),
                width: Get.size.width * 0.65,
              ),
            ),
            SizedBox(height: kSpacer6),
            Text("Oops!", style: TextStyl.heading(context).sm.semibold),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kSpacer8)
                  .copyWith(top: kSpacer2),
              child: Text(
                message,
                style: TextStyl.body(context).md.regular,
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(flex: 1),
            SizedBox(
              height: kSpacer12,
              child: Button.block(
                key: UniqueKey(),
                label: "Go Back",
                leading: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                ),
                onTap: (_) => Get.back(),
                flat: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

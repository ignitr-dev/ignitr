part of "../../shared.dart";

class NotFoundErrorPage extends StatelessWidget {
  const NotFoundErrorPage({
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kSpacer8),
            child: SvgPicture.asset(
              assetIcon("not_found.svg"),
              width: Get.size.width * 0.65,
            ),
          ),
          SizedBox(height: kSpacer),
          Text("Oops!", style: TextStyl.heading(context).sm.semibold),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kSpacer8)
                .copyWith(top: 8.0),
            child: Text(
              message,
              style: TextStyl.body(context).md.regular,
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(flex: 1),
          action != null
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: kSpacer8)
                      .copyWith(bottom: kSpacer8),
                  child: TextButton(
                    onPressed: action,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      minimumSize: Size(Get.size.width, kSpacer10),
                      padding: const EdgeInsets.symmetric(horizontal: kSpacer8),
                    ),
                    child: Text(
                      actionLabel,
                      style: TextStyl.label(context)
                          .md
                          .semibold
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}

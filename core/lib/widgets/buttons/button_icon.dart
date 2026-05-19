part of "package:core/core.dart";

class ButtonIcon extends StatelessWidget {
  final Widget icon;
  final Widget? loadingIcon;
  final Color? backgroundColor;
  final Color? color;
  final void Function(ButtonController)? onTap;
  final bool outline;
  final num radius;

  final btnController = ButtonController.instance;

  ButtonIcon({
    required Key key,
    required this.icon,
    this.onTap,
    this.outline = false,
    this.backgroundColor = kcAccent,
    this.color,
    this.loadingIcon,
    this.radius = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          if (!btnController.isBusy && !btnController.isDisabled) {
            onTap!(btnController);
          }
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              constraints:
                  BoxConstraints(minHeight: radius * 2, minWidth: radius * 2),
              alignment: Alignment.center,
              decoration: !outline
                  ? BoxDecoration(
                      color: !btnController.isDisabled
                          ? backgroundColor
                          : backgroundColor!.withAlpha(alpha(0.5)),
                      borderRadius:
                          BorderRadius.circular(radius.toDouble() * 2),
                    )
                  : BoxDecoration(
                      color: Colors.transparent,
                      borderRadius:
                          BorderRadius.circular(radius.toDouble() * 2),
                      border: Border.all(
                        color: !btnController.isDisabled
                            ? getContrastColor(backgroundColor!)
                            : getContrastColor(backgroundColor!)
                                .withAlpha(alpha(0.5)),
                        width: 1,
                      ),
                    ),
              child: !btnController.isBusy
                  ? icon
                  : loadingIcon != null
                      ? SizedBox(height: 20, width: 20, child: loadingIcon)
                      : LoadingIcon(
                          color: !outline
                              ? getContrastColor(backgroundColor!)
                              : backgroundColor!,
                          height: 16,
                        ),
            ),
          ],
        ),
      ),
    );
  }
}

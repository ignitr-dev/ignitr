part of "package:core/core.dart";

class ButtonIcon extends StatefulWidget {
  final Widget icon;
  final Widget? loadingIcon;
  final Color? backgroundColor;
  final Color? color;
  final void Function(ButtonController)? onTap;
  final bool outline;
  final double radius;

  const ButtonIcon({
    super.key,
    required this.icon,
    this.onTap,
    this.outline = false,
    this.backgroundColor = kcAccent,
    this.color,
    this.loadingIcon,
    this.radius = 16,
  });

  @override
  State<ButtonIcon> createState() => _ButtonIconState();
}

class _ButtonIconState extends State<ButtonIcon> {
  late ButtonController controller;

  @override
  void initState() {
    super.initState();
    controller = ButtonController();
    controller.addListener(_update);
  }

  void _update() => setState(() {});

  @override
  void dispose() {
    controller.removeListener(_update);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = widget.backgroundColor ?? kcAccent;
    final iconColor = widget.color ?? (bgColor.computeLuminance() > 0.6 ? kcSlate.shade600 : kcWhite);

    final disabledColor = bgColor.withValues(alpha: 0.5);

    Widget content = controller.isBusy
        ? widget.loadingIcon ??
            LoadingIcon(
              color: !widget.outline ? iconColor : bgColor,
              height: 16,
              circular: true,
            )
        : IconTheme(
            data: IconThemeData(color: !widget.outline ? iconColor : bgColor),
            child: widget.icon,
          );

    final container = AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      padding: const EdgeInsets.all(12),
      constraints: BoxConstraints(
        minHeight: widget.radius * 2,
        minWidth: widget.radius * 2,
      ),
      alignment: Alignment.center,
      decoration: widget.outline
          ? BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(widget.radius * 2),
              border: Border.all(
                color: controller.isDisabled ? disabledColor : bgColor,
              ),
            )
          : BoxDecoration(
              color: controller.isDisabled ? disabledColor : bgColor,
              borderRadius: BorderRadius.circular(widget.radius * 2),
            ),
      child: content,
    );

    return GestureDetector(
      onTap: controller.isDisabled ? null : () => widget.onTap?.call(controller),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [container],
      ),
    );
  }
}

part of "package:core/core.dart";

enum ButtonVariant { primary, secondary, danger, success, info, warning, dark, light }

class Button extends StatefulWidget {
  final String label;
  final void Function(ButtonController)? onTap;
  final bool outline;
  final Widget? leading;
  final Widget? loadingIcon;
  final bool block;
  final bool flat;
  final ButtonVariant variant;
  final EdgeInsets padding;

  const Button({
    super.key,
    required this.label,
    this.onTap,
    this.leading,
    this.loadingIcon,
    this.flat = false,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
  })  : outline = false,
        block = false,
        variant = ButtonVariant.primary;

  const Button.outline({
    required Key key,
    required this.label,
    this.onTap,
    this.leading,
    this.loadingIcon,
    this.flat = false,
    this.variant = ButtonVariant.primary,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
  })  : block = false,
        outline = true,
        super(key: key);
  const Button.outlineBlock({
    required Key key,
    required this.label,
    this.onTap,
    this.leading,
    this.loadingIcon,
    this.flat = false,
    this.variant = ButtonVariant.primary,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
  })  : block = true,
        outline = true,
        super(key: key);
  const Button.block({
    required Key key,
    required this.label,
    this.onTap,
    this.leading,
    this.loadingIcon,
    this.flat = false,
    this.variant = ButtonVariant.primary,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
  })  : block = true,
        outline = false,
        super(key: key);
  const Button.primary({
    required Key key,
    required this.label,
    this.onTap,
    this.leading,
    this.loadingIcon,
    this.flat = false,
    this.block = false,
    this.outline = false,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
  })  : variant = ButtonVariant.primary,
        super(key: key);
  const Button.secondary({
    required Key key,
    required this.label,
    this.onTap,
    this.leading,
    this.loadingIcon,
    this.flat = false,
    this.block = false,
    this.outline = false,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
  })  : variant = ButtonVariant.secondary,
        super(key: key);
  const Button.success({
    required Key key,
    required this.label,
    this.onTap,
    this.leading,
    this.loadingIcon,
    this.flat = false,
    this.block = false,
    this.outline = false,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
  })  : variant = ButtonVariant.success,
        super(key: key);
  const Button.danger({
    required Key key,
    required this.label,
    this.onTap,
    this.leading,
    this.loadingIcon,
    this.flat = false,
    this.block = false,
    this.outline = false,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
  })  : variant = ButtonVariant.danger,
        super(key: key);
  const Button.info({
    required Key key,
    required this.label,
    this.onTap,
    this.leading,
    this.loadingIcon,
    this.flat = false,
    this.block = false,
    this.outline = false,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
  })  : variant = ButtonVariant.info,
        super(key: key);
  const Button.warning({
    required Key key,
    required this.label,
    this.onTap,
    this.leading,
    this.loadingIcon,
    this.flat = false,
    this.block = false,
    this.outline = false,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
  })  : variant = ButtonVariant.warning,
        super(key: key);
  const Button.dark({
    required Key key,
    required this.label,
    this.onTap,
    this.leading,
    this.loadingIcon,
    this.flat = false,
    this.block = false,
    this.outline = false,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
  })  : variant = ButtonVariant.dark,
        super(key: key);
  const Button.light({
    required Key key,
    required this.label,
    this.onTap,
    this.leading,
    this.loadingIcon,
    this.flat = false,
    this.block = false,
    this.outline = false,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
  })  : variant = ButtonVariant.light,
        super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
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

  Map<ButtonVariant, Color> _btnColors(BuildContext context) => {
        ButtonVariant.primary: kcAccent,
        ButtonVariant.secondary: AppColors.light.secondarySurface,
        ButtonVariant.danger: kcDanger,
        ButtonVariant.success: kcSuccess,
        ButtonVariant.info: kcInfo,
        ButtonVariant.warning: kcWarning,
        ButtonVariant.dark: kcSlate.shade600,
        ButtonVariant.light: kcSlate.shade100,
      };

  @override
  Widget build(BuildContext context) {
    final bgColor = _btnColors(context)[widget.variant]!;
    final textColor = bgColor.computeLuminance() > 0.6 ? kcSlate.shade600 : kcWhite;

    final disabledColor = bgColor.withValues(alpha: 0.5);

    Widget content = controller.isBusy
        ? widget.loadingIcon ??
            LoadingIcon(
              color: !widget.outline ? textColor : bgColor,
              height: 16,
              circular: true,
            )
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.leading != null) widget.leading!,
              if (widget.leading != null) SizedBox(width: kSpacer1),
              Text(
                widget.label,
                style: TextStyl.label(context).md.regular?.copyWith(
                      fontWeight: !widget.outline ? FontWeight.bold : FontWeight.w400,
                      color: !widget.outline ? textColor : bgColor,
                    ),
              ),
            ],
          );

    final container = AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      padding: widget.padding,
      width: widget.block ? double.infinity : null,
      alignment: Alignment.center,
      decoration: widget.outline
          ? BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(widget.flat ? 0 : 8),
              border: Border.all(
                color: controller.isDisabled ? disabledColor : bgColor,
              ),
            )
          : BoxDecoration(
              color: controller.isDisabled ? disabledColor : bgColor,
              borderRadius: BorderRadius.circular(widget.flat ? 0 : 8),
            ),
      child: content,
    );

    return GestureDetector(
      onTap: controller.isDisabled ? null : () => widget.onTap?.call(controller),
      child: widget.block
          ? container
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [container],
            ),
    );
  }
}

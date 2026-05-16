part of "package:core/core.dart";

enum ButtonVariant { primary, secondary, danger, success, info, warning, dark, light }

class Button extends StatelessWidget {
  final String label;
  final void Function(ButtonController)? onTap;
  final bool outline;
  final Widget? leading;
  final Widget? loadingIcon;
  final bool block;
  final bool flat;
  final ButtonVariant variant;
  final EdgeInsets padding;

  Button({
    required Key key,
    required this.label,
    this.onTap,
    this.leading,
    this.loadingIcon,
    this.flat = false,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
  })  : outline = false,
        block = false,
        variant = ButtonVariant.primary,
        super(key: key);

  Button.outline({
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

  Button.outlineBlock({
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

  Button.block({
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

  Button.primary({
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

  Button.secondary({
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

  Button.success({
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

  Button.danger({
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

  Button.info({
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

  Button.warning({
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

  Button.dark({
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

  Button.light({
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

  final ButtonController btnController = ButtonController.instance;

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
    Color btnBgColor = _btnColors(context)[variant]!;
    Color btnTxtColor = btnBgColor.computeLuminance() > 0.6 ? kcSlate.shade600 : kcWhite;

    return Obx(
      () => GestureDetector(
        onTap: () => onTap!(btnController),
        child: block
            ? AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                padding: padding,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: !outline
                    ? BoxDecoration(
                        color: !btnController.isDisabled ? btnBgColor : btnBgColor.withAlpha(alpha(0.5)),
                        borderRadius: BorderRadius.circular(!flat ? 8 : 0),
                      )
                    : BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(!flat ? 8 : 0),
                        border: Border.all(
                          color: !btnController.isDisabled ? btnBgColor : btnBgColor.withAlpha(alpha(0.5)),
                          width: 1,
                        ),
                      ),
                child: !btnController.isBusy
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (leading != null) leading!,
                          if (leading != null) SizedBox(width: 6),
                          Text(
                            label,
                            style: TextStyl.label(context).md.regular?.copyWith(
                                  fontWeight: !outline ? FontWeight.bold : FontWeight.w400,
                                  color: !outline ? btnTxtColor : btnBgColor,
                                ),
                          ),
                        ],
                      )
                    : loadingIcon != null
                        ? SizedBox(height: 20, width: 20, child: loadingIcon)
                        : LoadingIcon(
                            color: !outline ? btnTxtColor : btnBgColor,
                            height: 16,
                            circular: true,
                          ),
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    padding: padding,
                    alignment: Alignment.center,
                    decoration: !outline
                        ? BoxDecoration(
                            color: !btnController.isDisabled ? btnBgColor : btnBgColor.withAlpha(alpha(0.5)),
                            borderRadius: BorderRadius.circular(!flat ? 8 : 0),
                            border: Border.all(
                              color: btnBgColor,
                              width: 1,
                            ),
                          )
                        : BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(!flat ? 8 : 0),
                            border: Border.all(
                              color: btnBgColor,
                              width: 1,
                            ),
                          ),
                    child: !btnController.isBusy
                        ? Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (leading != null) leading!,
                              if (leading != null) SizedBox(width: 6),
                              Text(
                                label,
                                style: !outline
                                    ? TextStyl.label(context).sm.medium?.copyWith(
                                          color: btnTxtColor,
                                        )
                                    : TextStyl.label(context).sm.regular?.copyWith(
                                          color: btnBgColor,
                                        ),
                              ),
                            ],
                          )
                        : loadingIcon != null
                            ? SizedBox(height: 20, width: 20, child: loadingIcon)
                            : LoadingIcon(
                                color: !outline ? btnTxtColor : btnBgColor,
                                height: 16,
                              ),
                  ),
                ],
              ),
      ),
    );
  }
}

part of "package:core/core.dart";

class TextStyl {
  static TypographySize heading(BuildContext context) {
    return TypographySize(
      xs: TypographyWeight(
        regular: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 18.0,
              height: 1.33,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 18.0,
              height: 1.33,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 18.0,
              height: 1.33,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 18.0,
              height: 1.33,
              fontWeight: FontWeight.w800,
            ),
      ),
      sm: TypographyWeight(
        regular: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 24.0,
              height: 1.33,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 24.0,
              height: 1.33,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 24.0,
              height: 1.33,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 24.0,
              height: 1.33,
              fontWeight: FontWeight.w800,
            ),
      ),
      md: TypographyWeight(
        regular: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 32.0,
              height: 1.25,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 32.0,
              height: 1.25,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 32.0,
              height: 1.25,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 32.0,
              height: 1.25,
              fontWeight: FontWeight.w700,
            ),
      ),
      lg: TypographyWeight(
        regular: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 36.0,
              height: 1.33,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 36.0,
              height: 1.33,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 36.0,
              height: 1.33,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 36.0,
              height: 1.33,
              fontWeight: FontWeight.w800,
            ),
      ),
      xl: TypographyWeight(
        regular: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 44.0,
              height: 1.27,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 44.0,
              height: 1.27,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 44.0,
              height: 1.27,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 44.0,
              height: 1.27,
              fontWeight: FontWeight.w800,
            ),
      ),
    );
  }

  static TypographySize body(BuildContext context) {
    return TypographySize(
      xs: TypographyWeight(
        regular: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 12.0,
              height: 1.33,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 12.0,
              height: 1.33,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 12.0,
              height: 1.33,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 12.0,
              height: 1.33,
              fontWeight: FontWeight.w800,
            ),
      ),
      sm: TypographyWeight(
        regular: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 14.0,
              height: 1.28,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 14.0,
              height: 1.28,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 14.0,
              height: 1.28,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 14.0,
              height: 1.28,
              fontWeight: FontWeight.w800,
            ),
      ),
      md: TypographyWeight(
        regular: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 16.0,
              height: 1.5,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 16.0,
              height: 1.5,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 16.0,
              height: 1.5,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 16.0,
              height: 1.5,
              fontWeight: FontWeight.w800,
            ),
      ),
      lg: TypographyWeight(
        regular: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 18.0,
              height: 1.55,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 18.0,
              height: 1.55,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 18.0,
              height: 1.55,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 18.0,
              height: 1.55,
              fontWeight: FontWeight.w800,
            ),
      ),
      xl: TypographyWeight(
        regular: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 24.0,
              height: 1.33,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 24.0,
              height: 1.33,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 24.0,
              height: 1.33,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 24.0,
              height: 1.33,
              fontWeight: FontWeight.w800,
            ),
      ),
    );
  }

  static TypographySize caption(BuildContext context) {
    return TypographySize(
      xs: TypographyWeight(
        regular: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 10.0,
              height: 1.4,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 10.0,
              height: 1.4,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 10.0,
              height: 1.4,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 10.0,
              height: 1.4,
              fontWeight: FontWeight.w800,
            ),
      ),
      sm: TypographyWeight(
        regular: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 12.0,
              height: 1.33,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 12.0,
              height: 1.33,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 12.0,
              height: 1.33,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 12.0,
              height: 1.33,
              fontWeight: FontWeight.w800,
            ),
      ),
      md: TypographyWeight(
        regular: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 14.0,
              height: 1.28,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 14.0,
              height: 1.28,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 14.0,
              height: 1.28,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 14.0,
              height: 1.28,
              fontWeight: FontWeight.w800,
            ),
      ),
      lg: TypographyWeight(
        regular: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 18.0,
              height: 1.33,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 18.0,
              height: 1.33,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 18.0,
              height: 1.33,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 18.0,
              height: 1.33,
              fontWeight: FontWeight.w800,
            ),
      ),
      xl: TypographyWeight(
        regular: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 20.0,
              height: 1.4,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 20.0,
              height: 1.4,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 20.0,
              height: 1.4,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 20.0,
              height: 1.4,
              fontWeight: FontWeight.w800,
            ),
      ),
    );
  }

  static TypographySize label(BuildContext context) {
    return TypographySize(
      xs: TypographyWeight(
        regular: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 10.0,
              height: 1.4,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 10.0,
              height: 1.4,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 10.0,
              height: 1.4,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 10.0,
              height: 1.4,
              fontWeight: FontWeight.w800,
            ),
      ),
      sm: TypographyWeight(
        regular: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 12.0,
              height: 1.33,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 12.0,
              height: 1.33,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 12.0,
              height: 1.33,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 12.0,
              height: 1.33,
              fontWeight: FontWeight.w800,
            ),
      ),
      md: TypographyWeight(
        regular: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 14.0,
              height: 1.28,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 14.0,
              height: 1.28,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 14.0,
              height: 1.28,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 14.0,
              height: 1.28,
              fontWeight: FontWeight.w800,
            ),
      ),
      lg: TypographyWeight(
        regular: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 18.0,
              height: 1.33,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 18.0,
              height: 1.33,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 18.0,
              height: 1.33,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 18.0,
              height: 1.33,
              fontWeight: FontWeight.w800,
            ),
      ),
      xl: TypographyWeight(
        regular: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 20.0,
              height: 1.4,
              fontWeight: FontWeight.w400,
            ),
        medium: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 20.0,
              height: 1.4,
              fontWeight: FontWeight.w500,
            ),
        semibold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 20.0,
              height: 1.4,
              fontWeight: FontWeight.w700,
            ),
        bold: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 20.0,
              height: 1.4,
              fontWeight: FontWeight.w800,
            ),
      ),
    );
  }
}

/// Typography Objects
class TypographySize {
  final TypographyWeight xs;
  final TypographyWeight sm;
  final TypographyWeight md;
  final TypographyWeight lg;
  final TypographyWeight xl;

  TypographySize({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
  });
}

class TypographyWeight {
  final TextStyle? regular;
  final TextStyle? medium;
  final TextStyle? semibold;
  final TextStyle? bold;

  TypographyWeight({this.regular, this.medium, this.semibold, this.bold});
}

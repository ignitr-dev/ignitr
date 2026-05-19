part of "package:core/core.dart";

class FormLabel extends StatelessWidget {
  const FormLabel({super.key, required this.label, this.color});

  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyl.label(context)
          .md
          .medium
          ?.copyWith(color: color ?? kcSlate.shade600),
    );
  }
}

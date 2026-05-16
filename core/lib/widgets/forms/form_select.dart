part of "package:core/core.dart";

class FormSelect extends StatelessWidget {
  const FormSelect({super.key, required this.options, this.value, this.onChanged});

  final List<DropdownMenuItem> options;
  final dynamic value;
  final Function(dynamic)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black.withAlpha(alpha(0.25)), width: 1.0),
        borderRadius: BorderRadius.circular(4),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          isDense: true,
          items: options,
          value: value,
          onChanged: onChanged,
        ),
      ),
    );
  }
}

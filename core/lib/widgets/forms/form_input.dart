part of "package:core/core.dart";

class FormInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? placeholder;
  final String? labelText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final Icon? leading;
  final bool isPassword;
  final TextInputType type;
  final int rows;
  final TextInputAction action;

  const FormInput({
    super.key,
    this.controller,
    this.placeholder = "Input hint",
    this.labelText,
    this.validator,
    this.leading,
    this.rows = 1,
    this.onSaved,
    this.action = TextInputAction.next,
  })  : type = TextInputType.text,
        isPassword = false;

  const FormInput.text({
    super.key,
    this.controller,
    this.placeholder = "Input hint",
    this.validator,
    this.labelText,
    this.leading,
    this.rows = 1,
    this.onSaved,
    this.action = TextInputAction.next,
  })  : type = TextInputType.text,
        isPassword = false;

  const FormInput.password({
    super.key,
    this.controller,
    this.placeholder = "Input hint",
    this.labelText,
    this.validator,
    this.leading,
    this.rows = 1,
    this.onSaved,
    this.action = TextInputAction.next,
  })  : type = TextInputType.text,
        isPassword = true;

  const FormInput.number({
    super.key,
    this.controller,
    this.placeholder = "Input hint",
    this.labelText,
    this.validator,
    this.leading,
    this.rows = 1,
    this.onSaved,
    this.action = TextInputAction.next,
  })  : type = TextInputType.number,
        isPassword = false;

  const FormInput.email({
    super.key,
    this.controller,
    this.placeholder = "Input hint",
    this.labelText,
    this.validator,
    this.leading,
    this.rows = 1,
    this.onSaved,
    this.action = TextInputAction.next,
  })  : type = TextInputType.emailAddress,
        isPassword = false;

  const FormInput.datetime({
    super.key,
    this.controller,
    this.placeholder = "Input hint",
    this.labelText,
    this.validator,
    this.leading,
    this.rows = 1,
    this.onSaved,
    this.action = TextInputAction.next,
  })  : type = TextInputType.datetime,
        isPassword = false;

  const FormInput.url({
    super.key,
    this.controller,
    this.placeholder = "Input hint",
    this.labelText,
    this.validator,
    this.leading,
    this.rows = 1,
    this.onSaved,
    this.action = TextInputAction.next,
  })  : type = TextInputType.url,
        isPassword = false;

  const FormInput.multiline({
    super.key,
    this.controller,
    this.placeholder = "Input hint",
    this.labelText,
    this.validator,
    this.leading,
    this.rows = 4,
    this.onSaved,
    this.action = TextInputAction.next,
  })  : type = TextInputType.multiline,
        isPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      minLines: type == TextInputType.multiline ? rows : 1,
      maxLines: type == TextInputType.multiline ? null : 1,
      decoration: InputDecoration(
        hintText: placeholder,
        labelText: labelText,
        prefixIcon: leading,
      ),
      obscureText: isPassword,
      validator: validator,
      onSaved: onSaved,
      textInputAction: action,
    );
  }
}

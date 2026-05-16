part of "package:core/core.dart";

class Validator {
  final Map<String, String> errors = {};
  final String field;
  final String value;

  Validator(this.field, this.value);

  void _addError(String message) {
    errors[field] = message;
  }

  Validator required() {
    if (value.trim().isEmpty) {
      _addError("${Str.of(field).ucFirst()} is required");
    }
    return this;
  }

  Validator email() {
    final emailRegex = RegExp(
      r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$",
    );

    if (!emailRegex.hasMatch(value)) {
      _addError("${Str.of(field).ucFirst()} needs to be a valid email!");
    }
    return this;
  }

  Validator isEqual(dynamic val, String fieldMatchWith) {
    if (value != val) {
      _addError(
        "${Str.of(fieldMatchWith).ucFirst()} and ${Str.of(field).ucFirst()} don't match!",
      );
    }
    return this;
  }

  Validator number() {
    if (value.isNotEmpty && double.tryParse(value) == null) {
      _addError("${Str.of(field).ucFirst()} needs to be a number!");
    }
    return this;
  }

  Validator min(int minLength) {
    if (value.length < minLength) {
      _addError("${Str.of(field).ucFirst()} must be at least $minLength characters!");
    }
    return this;
  }

  Validator max(int maxLength) {
    if (value.length > maxLength) {
      _addError("${Str.of(field).ucFirst()} must be at most $maxLength characters!");
    }
    return this;
  }

  Validator between(int minLength, int maxLength) {
    if (value.length < minLength || value.length > maxLength) {
      _addError(
        "${Str.of(field).ucFirst()} must be between $minLength and $maxLength characters!",
      );
    }
    return this;
  }

  Validator specialCharacter({String? allowed}) {
    final regex = RegExp(r"[\s\-$&+,:;=?@#|<>\.^*()%!\\]");

    if (regex.hasMatch(value)) {
      _addError(
        "${Str.of(field).ucFirst()} must not contain special characters!",
      );
    }
    return this;
  }

  String? validate() {
    return errors[field];
  }
}

part of "package:core/core.dart";

class Validator {
  final String field;
  final String value;

  late final String trimmed = value.trim();
  late final String _fieldLabel = Str.of(field).ucFirst();

  String? _error;

  Validator(this.field, this.value);

  bool get hasError => _error != null;

  void _addError(String message) {
    _error ??= message;
  }

  Validator required({String? message}) {
    if (hasError) return this;

    if (trimmed.isEmpty) {
      _addError(message ?? "$_fieldLabel is required");
    }

    return this;
  }

  Validator email({String? message}) {
    if (hasError || trimmed.isEmpty) return this;

    if (!trimmed.isEmail) {
      _addError(
        message ?? "$_fieldLabel needs to be a valid email!",
      );
    }

    return this;
  }

  Validator number({String? message}) {
    if (hasError || trimmed.isEmpty) return this;

    if (double.tryParse(trimmed) == null) {
      _addError(
        message ?? "$_fieldLabel needs to be a number!",
      );
    }

    return this;
  }

  Validator min(int minLength, {String? message}) {
    if (hasError || trimmed.isEmpty) return this;

    if (trimmed.length < minLength) {
      _addError(
        message ?? "$_fieldLabel must be at least $minLength characters!",
      );
    }

    return this;
  }

  Validator max(int maxLength, {String? message}) {
    if (hasError || trimmed.isEmpty) return this;

    if (trimmed.length > maxLength) {
      _addError(
        message ?? "$_fieldLabel must be at most $maxLength characters!",
      );
    }

    return this;
  }

  Validator between(
    int minLength,
    int maxLength, {
    String? message,
  }) {
    if (hasError || trimmed.isEmpty) return this;

    if (trimmed.length < minLength || trimmed.length > maxLength) {
      _addError(
        message ??
            "$_fieldLabel must be between "
                "$minLength and $maxLength characters!",
      );
    }

    return this;
  }

  Validator isEqual(
    String otherValue,
    String otherField, {
    String? message,
  }) {
    if (hasError) return this;

    if (trimmed != otherValue.trim()) {
      _addError(
        message ??
            "${Str.of(otherField).ucFirst()} and "
                "$_fieldLabel don't match!",
      );
    }

    return this;
  }

  Validator regex(
    RegExp pattern, {
    required String message,
  }) {
    if (hasError || trimmed.isEmpty) return this;

    if (!pattern.hasMatch(trimmed)) {
      _addError(message);
    }

    return this;
  }

  Validator noSpecialChars({String? message}) {
    if (hasError || trimmed.isEmpty) return this;

    final regex = RegExp(
      r'[!@#$%^&*(),.?":{}|<>\[\]\\/\-_+=~`]',
    );

    if (regex.hasMatch(trimmed)) {
      _addError(
        message ?? "$_fieldLabel must not contain special characters!",
      );
    }

    return this;
  }

  Validator alpha({String? message}) {
    if (hasError || trimmed.isEmpty) return this;

    final regex = RegExp(r"^[a-zA-Z]+$");

    if (!regex.hasMatch(trimmed)) {
      _addError(
        message ?? "$_fieldLabel may only contain letters!",
      );
    }

    return this;
  }

  Validator alphaNumeric({String? message}) {
    if (hasError || trimmed.isEmpty) return this;

    final regex = RegExp(r"^[a-zA-Z0-9]+$");

    if (!regex.hasMatch(trimmed)) {
      _addError(
        message ?? "$_fieldLabel may only contain letters and numbers!",
      );
    }

    return this;
  }

  String? validate() => _error;
}

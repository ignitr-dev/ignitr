part of "package:core/core.dart";

enum ResponseStatus { success, error }

class ApiResponse<T> {
  final T? data;
  final String? error;
  final ResponseStatus? status;

  bool get isSuccess => status == ResponseStatus.success;
  bool get hasError => status == ResponseStatus.error;

  ApiResponse.success(this.data)
      : error = null,
        status = ResponseStatus.success;

  ApiResponse.withError(this.error, {this.status = ResponseStatus.error}) : data = null;
}

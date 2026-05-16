part of "package:core/core.dart";

class ApiClient {
  static const int timeout = 60;

  final http.Client _client;

  ApiClient({http.Client? client}) : _client = client ?? http.Client();

  /// GENERIC REQUEST HANDLER
  Future<ApiResponse<T>> _request<T>({
    required String method,
    required String endpoint,
    Map<String, dynamic>? query,
    Map<String, String>? headers,
    dynamic body,
    bool auth = false,
    T Function(dynamic json)? parser,
  }) async {
    try {
      final uri = _buildUri(endpoint, query);

      final requestHeaders = _buildHeaders(auth, headers);

      http.Response response;

      switch (method) {
        case "GET":
          response = await _client.get(uri, headers: requestHeaders).timeout(const Duration(seconds: timeout));
          break;

        case "POST":
          response = await _client.post(uri, headers: requestHeaders, body: body != null ? jsonEncode(body) : null).timeout(const Duration(seconds: timeout));
          break;

        case "PUT":
          response = await _client.put(uri, headers: requestHeaders, body: body != null ? jsonEncode(body) : null).timeout(const Duration(seconds: timeout));
          break;

        case "DELETE":
          response = await _client.delete(uri, headers: requestHeaders, body: body != null ? jsonEncode(body) : null).timeout(const Duration(seconds: timeout));
          break;

        default:
          throw Exception("Unsupported method: $method");
      }

      return _handleResponse<T>(response, parser);
    } catch (e) {
      return ApiResponse.withError("Network error: $e");
    }
  }

  /// PUBLIC METHODS
  Future<ApiResponse<T>> get<T>(
    String endpoint, {
    Map<String, dynamic>? query,
    Map<String, String>? headers,
    bool auth = false,
    T Function(dynamic json)? parser,
  }) {
    return _request<T>(
      method: "GET",
      endpoint: endpoint,
      query: query,
      headers: headers,
      auth: auth,
      parser: parser,
    );
  }

  Future<ApiResponse<T>> post<T>(
    String endpoint, {
    Map<String, dynamic>? query,
    Map<String, String>? headers,
    dynamic body,
    bool auth = false,
    T Function(dynamic json)? parser,
  }) {
    return _request<T>(
      method: "POST",
      endpoint: endpoint,
      query: query,
      headers: headers,
      body: body,
      auth: auth,
      parser: parser,
    );
  }

  Future<ApiResponse<T>> put<T>(
    String endpoint, {
    Map<String, dynamic>? query,
    Map<String, String>? headers,
    dynamic body,
    bool auth = false,
    T Function(dynamic json)? parser,
  }) {
    return _request<T>(
      method: "PUT",
      endpoint: endpoint,
      query: query,
      headers: headers,
      body: body,
      auth: auth,
      parser: parser,
    );
  }

  Future<ApiResponse<T>> delete<T>(
    String endpoint, {
    Map<String, dynamic>? query,
    Map<String, String>? headers,
    dynamic body,
    bool auth = false,
    T Function(dynamic json)? parser,
  }) {
    return _request<T>(
      method: "DELETE",
      endpoint: endpoint,
      query: query,
      headers: headers,
      body: body,
      auth: auth,
      parser: parser,
    );
  }

  /// HELPERS
  Uri _buildUri(String endpoint, Map<String, dynamic>? query) {
    final uri = Uri.parse("${Ignitr.config.apiBaseUrl}$endpoint");
    return uri.replace(queryParameters: query);
  }

  Map<String, String> _buildHeaders(
    bool auth,
    Map<String, String>? custom,
  ) {
    final headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",
    };

    if (auth) {
      final token = Storage.get<String>("token");
      if (token != null) {
        headers["Authorization"] = "Bearer $token";
      }
    }

    if (custom != null) headers.addAll(custom);

    return headers;
  }

  ApiResponse<T> _handleResponse<T>(
    http.Response response,
    T Function(dynamic json)? parser,
  ) {
    final decoded = jsonDecode(response.body);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final data = parser != null ? parser(decoded) : decoded;
      return ApiResponse.success(data);
    }

    return ApiResponse.withError(
      decoded is Map ? decoded["message"] ?? "Unknown error" : "Error",
    );
  }

  void dispose() {
    _client.close();
  }
}

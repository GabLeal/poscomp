import 'package:poscomp/layer/external/http/http_response.dart';

abstract class IHttpClient {
  Future<HttpResponse> get(
    String url, {
    Map<String, String>? headers,
  });

  Future<HttpResponse> post(
    String url, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    bool encodeBody = false,
  });

  Future<HttpResponse> put(
    String url, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    bool encodeBody = false,
  });

  Future<HttpResponse> patch(
    String url, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    bool encodeBody = false,
  });

  Future<HttpResponse> delete(
    String url, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  });
}

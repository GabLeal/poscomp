import 'dart:convert';

import 'package:poscomp/layer/external/http/http_client.dart';
import 'package:poscomp/layer/external/http/http_response.dart';
import 'package:http/http.dart' as http;

class HttpAdapter implements IHttpClient {
  final http.Client httpClient;

  const HttpAdapter(this.httpClient);

  @override
  Future<HttpResponse> get(
    String url, {
    Map<String, String>? headers,
  }) async {
    try {
      final response = await httpClient.get(Uri.parse(url), headers: headers);

      return HttpResponse(
        url: url,
        body: response.body,
        statusCode: response.statusCode,
      );
    } catch (exception) {
      throw Exception();
    }
  }

  @override
  Future<HttpResponse> post(
    String url, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    bool encodeBody = false,
  }) async {
    try {
      final response = await httpClient.post(
        Uri.parse(url),
        body: encodeBody ? jsonEncode(body) : body,
        headers: headers,
      );

      return HttpResponse(
        url: url,
        body: response.body,
        statusCode: response.statusCode,
      );
    } catch (exception) {
      throw Exception();
    }
  }

  @override
  Future<HttpResponse> delete(
    String url, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await httpClient.delete(
        Uri.parse(url),
        body: body,
        headers: headers,
      );

      return HttpResponse(
        url: url,
        body: response.body,
        statusCode: response.statusCode,
      );
    } catch (exception) {
      throw Exception();
    }
  }

  @override
  Future<HttpResponse> patch(
    String url, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    bool encodeBody = false,
  }) async {
    try {
      final response = await httpClient.patch(
        Uri.parse(url),
        body: encodeBody ? jsonEncode(body) : body,
        headers: headers,
      );

      return HttpResponse(
        url: url,
        body: response.body,
        statusCode: response.statusCode,
      );
    } catch (exception) {
      throw Exception();
    }
  }

  @override
  Future<HttpResponse> put(
    String url, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    bool encodeBody = false,
  }) async {
    try {
      final response = await httpClient.put(
        Uri.parse(url),
        body: encodeBody ? jsonEncode(body) : body,
        headers: headers,
      );

      return HttpResponse(
        url: url,
        body: response.body,
        statusCode: response.statusCode,
      );
    } catch (exception) {
      throw Exception();
    }
  }
}

import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RecuperarPasswordCall {
  static Future<ApiCallResponse> call({
    String? userToken = '',
    String? pass = '',
    String? correo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$correo",
  "password": "$pass",
  "data": {
    "key": "value"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Recuperar password',
      apiUrl: 'https://lnsvwmmozlkegyjkjjvl.supabase.co/auth/v1/user',
      callType: ApiCallType.PUT,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imxuc3Z3bW1vemxrZWd5amtqanZsIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQxMTkwNDAsImV4cCI6MjAwOTY5NTA0MH0.kCJQhe35a2oJiMMb4ZDsHGQyqPSP7KMR7STcwj6hhpw',
        'Authorization': 'Bearer $userToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI Assistant Group Code

class OpenAIAssistantGroup {
  static String getBaseUrl() => 'https://api.openai.com/v1/';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'OpenAI-Beta': 'assistants=v2',
  };
  static CreateAutobiographyThreadCall createAutobiographyThreadCall =
      CreateAutobiographyThreadCall();
  static AddAutobiographyMessageCall addAutobiographyMessageCall =
      AddAutobiographyMessageCall();
  static CreateAutobiographyRunCall createAutobiographyRunCall =
      CreateAutobiographyRunCall();
  static GetAutobiographyRunCall getAutobiographyRunCall =
      GetAutobiographyRunCall();
  static GetAutobiographyMessagesCall getAutobiographyMessagesCall =
      GetAutobiographyMessagesCall();
  static CreateAutobiographyAssistantCall createAutobiographyAssistantCall =
      CreateAutobiographyAssistantCall();
  static GetAudioRecordingTextCall getAudioRecordingTextCall =
      GetAudioRecordingTextCall();
}

class CreateAutobiographyThreadCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
  }) async {
    final baseUrl = OpenAIAssistantGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'createAutobiographyThread',
      apiUrl: '$baseUrl/threads',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'OpenAI-Beta': 'assistants=v2',
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class AddAutobiographyMessageCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? message = '',
    String? role = 'user',
    String? apiKey = '',
  }) async {
    final baseUrl = OpenAIAssistantGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "role": "${escapeStringForJson(role)}",
  "content": "${escapeStringForJson(message)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addAutobiographyMessage',
      apiUrl: '$baseUrl/threads/$threadId/messages',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'OpenAI-Beta': 'assistants=v2',
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAutobiographyRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? assistantId = '',
    String? apiKey = '',
  }) async {
    final baseUrl = OpenAIAssistantGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "assistant_id": "${escapeStringForJson(assistantId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createAutobiographyRun',
      apiUrl: '$baseUrl/threads/$threadId/runs',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'OpenAI-Beta': 'assistants=v2',
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class GetAutobiographyRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKey = '',
  }) async {
    final baseUrl = OpenAIAssistantGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAutobiographyRun',
      apiUrl: '$baseUrl/threads/$threadId/runs/$runId',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'OpenAI-Beta': 'assistants=v2',
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class GetAutobiographyMessagesCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKey = '',
  }) async {
    final baseUrl = OpenAIAssistantGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAutobiographyMessages',
      apiUrl: '$baseUrl/threads/$threadId/messages',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'OpenAI-Beta': 'assistants=v2',
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? response(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[0].content[0].text.value''',
      ));
}

class CreateAutobiographyAssistantCall {
  Future<ApiCallResponse> call({
    String? instructions = '',
    String? model = '',
    String? apiKey = '',
  }) async {
    final baseUrl = OpenAIAssistantGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "instructions": "${escapeStringForJson(instructions)}",
  "name": "Autobiography Editor",
  "model": "${escapeStringForJson(model)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createAutobiographyAssistant',
      apiUrl: '$baseUrl/assistants',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'OpenAI-Beta': 'assistants=v2',
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class GetAudioRecordingTextCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
    FFUploadedFile? file,
  }) async {
    final baseUrl = OpenAIAssistantGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAudioRecordingText',
      apiUrl: '${baseUrl}audio/transcriptions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'OpenAI-Beta': 'assistants=v2',
        'Content-Type': 'multipart/form-data',
        'Authorization': 'Bearer $apiKey',
      },
      params: {
        'model': "whisper-1",
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic text(dynamic response) => getJsonField(
        response,
        r'''$.text''',
      );
}

/// End OpenAI Assistant Group Code

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
  if (item is DocumentReference) {
    return item.path;
  }
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}

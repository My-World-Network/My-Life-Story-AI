// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

// Main function to send audio file to Whisper API
Future<String?> sendAudioFileToWhisper(
    String accessTokenUrl, String openAiApiKey) async {
  try {
    // Step 1: Fetch the audio file directly using the Access Token URL
    final http.Response downloadResponse =
        await http.get(Uri.parse(accessTokenUrl));
    if (downloadResponse.statusCode != 200) {
      throw Exception('Failed to download the audio file.');
    }

    // The audio file has been downloaded successfully
    Uint8List audioBytes = downloadResponse.bodyBytes;

    // Step 2: Send the audio file to OpenAI Whisper API
    final Uri whisperUrl =
        Uri.parse('https://api.openai.com/v1/audio/transcriptions');

    // Prepare the HTTP request headers
    final Map<String, String> headers = {
      'Authorization': 'Bearer $openAiApiKey',
    };

    // Prepare the multipart request
    var request = http.MultipartRequest('POST', whisperUrl)
      ..headers.addAll(headers)
      ..fields['model'] = 'whisper-1'
      ..files.add(http.MultipartFile.fromBytes('file', audioBytes,
          filename: 'audio.mp3', contentType: MediaType('audio', 'mp3')));

    // Step 3: Send the request and handle the response
    final http.Response apiResponse =
        await http.Response.fromStream(await request.send());

    if (apiResponse.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(apiResponse.body);
      String transcribedText =
          responseData['text']; // Extract the transcribed text
      return transcribedText;
    } else {
      return 'Error: Unable to process the audio file.';
    }
  } catch (e) {
    print('Error in Whisper API call: $e');
    return 'Error: $e';
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

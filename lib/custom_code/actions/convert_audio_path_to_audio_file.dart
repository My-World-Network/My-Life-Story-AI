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

import 'index.dart'; // Imports other custom actions

import 'dart:io'; // For File operations
import 'package:http/http.dart' as http; // For HTTP requests
import 'package:path_provider/path_provider.dart'; // For temporary directory access

Future<FFUploadedFile?> convertAudioPathToAudioFile(String audioPath) async {
  try {
    File audioFile;

    // Check if the audioPath is a remote URL
    if (audioPath.startsWith('http://') || audioPath.startsWith('https://')) {
      // Download the file from the remote URL
      final response = await http.get(Uri.parse(audioPath));
      if (response.statusCode == 200) {
        // Save the downloaded file to the temporary directory
        final tempDir = await getTemporaryDirectory();
        final fileName =
            audioPath.split('/').last.split('?').first; // Extract the file name
        audioFile = File('${tempDir.path}/$fileName');
        await audioFile.writeAsBytes(response.bodyBytes);
      } else {
        print('Failed to download file. HTTP Status: ${response.statusCode}');
        return null;
      }
    } else {
      // If the audioPath is local, create a File object
      audioFile = File(audioPath);
      if (!audioFile.existsSync()) {
        print('Local file does not exist: $audioPath');
        return null;
      }
    }

    // Read the file bytes
    final fileBytes = await audioFile.readAsBytes();

    // Create and return an FFUploadedFile object
    return FFUploadedFile(
      name: audioFile.path.split('/').last,
      bytes: fileBytes,
    );
  } catch (e) {
    print('Error in convertAudioPathToAudioFile: $e');
    return null;
  }
}

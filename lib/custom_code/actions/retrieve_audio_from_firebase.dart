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
import 'dart:typed_data'; // Import for Uint8List (used to store file bytes)
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:http/http.dart' as http; // To handle HTTP requests
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

Future<FFUploadedFile> retrieveAudioFromFirebase(String? audioFilePath) async {
  // Argument: audioFilePath, the path of the audio file stored in Firebase Storage
  // Return Value: FFUploadedFile containing the audio file in .mp3 format

  if (audioFilePath == null) {
    throw Exception('Audio file path cannot be null');
  }

  try {
    // Get the reference to the audio file stored in Firebase Storage
    final firebase_storage.Reference storageRef =
        firebase_storage.FirebaseStorage.instance.ref(audioFilePath);

    // Step 1: Get the download URL of the file from Firebase Storage
    String downloadUrl = await storageRef.getDownloadURL();

    // Step 2: Fetch the audio file from the download URL
    final response = await http.get(Uri.parse(downloadUrl));
    if (response.statusCode == 200) {
      // The audio file has been downloaded successfully
      Uint8List audioBytes = response.bodyBytes; // Get the file bytes

      // Return the file as an FFUploadedFile (with bytes and name)
      return FFUploadedFile(bytes: audioBytes, name: 'audio.mp3');
    } else {
      throw Exception(
          'Failed to download the audio file from Firebase Storage');
    }
  } catch (e) {
    print("Error fetching audio file from Firebase: $e");
    throw Exception('Error retrieving audio file: $e');
  }
}

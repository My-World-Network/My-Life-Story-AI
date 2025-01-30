import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

List<dynamic>? parseAiResponse(String? response) {
  Future<Map<String, dynamic>> parseAiResponse(String? response) async {
    // Initialize variables to store parsed values
    int responseNumber = 0;
    String responseTitle = '';
    String responseContent = '';
    List<String> responseReferences = [];

    // Ensure response is not null
    if (response == null || response.isEmpty) {
      return {
        'response_number': responseNumber,
        'response_title': responseTitle,
        'response_content': responseContent,
        'response_references': responseReferences,
      };
    }

    try {
      // Parse the raw JSON string
      final Map<String, dynamic> parsedJson = jsonDecode(response);

      // Extract specific fields
      responseNumber = parsedJson['response_number'] ?? 0;
      responseTitle = parsedJson['response_title'] ?? '';
      responseContent = parsedJson['response_content'] ?? '';
      responseReferences =
          List<String>.from(parsedJson['response_references'] ?? []);
    } catch (e) {
      print('Error parsing AI response: $e');
    }

    // Return the parsed values
    return {
      'response_number': responseNumber,
      'response_title': responseTitle,
      'response_content': responseContent,
      'response_references': responseReferences,
    };
  }
}

List<dynamic>? parseAutobiographyMessages(String? response) {
  // If the response is null or empty, return null
  if (response == null || response.isEmpty) {
    return null;
  }

  try {
    // Decode the raw JSON string into a Map
    final Map<String, dynamic> parsedContent = jsonDecode(response);

    // Validate if parsedContent contains the required keys
    if (!parsedContent.containsKey('response_number') ||
        !parsedContent.containsKey('response_title') ||
        !parsedContent.containsKey('response_content') ||
        !parsedContent.containsKey('response_references')) {
      throw FormatException("Missing required keys in JSON response.");
    }

    // Extract the required fields
    final String responseNumber = parsedContent['response_number'].toString();
    final String responseTitle = parsedContent['response_title'] as String;
    final String responseContent = parsedContent['response_content'] as String;
    final List<dynamic> responseReferences =
        parsedContent['response_references'] as List;

    // Return the parsed data as a list
    return [
      responseNumber,
      responseTitle,
      responseContent,
      responseReferences
          .join(', ') // Join references as a single comma-separated string
    ];
  } catch (e) {
    // Log the error for debugging and return null
    print('Error parsing JSON: $e');
    return null;
  }
}

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

import 'package:cloud_firestore/cloud_firestore.dart';

Future<DocumentReference> getDocRefFromID(
  String docID,
  DocumentReference parentID,
) async {
  // Grab the path of the parent (e.g. "/Autobiographies/autobiography_id:KagWbJE8XVuRhv2igcm6")
  final parentPath = parentID.path;

  // Build the AI_Chapters path
  // e.g. "/Autobiographies/autobiography_id:KagWbJE8XVuRhv2igcm6/AI_Chapters/Ay0ScI0A62FoJpzAjJv8"
  final fullPath = '$parentPath/AI_Chapters/$docID';

  // Get a DocumentReference to that path
  final docRef = FirebaseFirestore.instance.doc(fullPath);

  return docRef;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

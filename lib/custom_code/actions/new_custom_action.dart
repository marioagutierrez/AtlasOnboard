// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_storage/firebase_storage.dart';
import 'dart:convert'; // Para decodificar la respuesta de la API de base64

import 'dart:typed_data'; // Import for Uint8List

Future<String> newCustomAction(String? apiResponse) async {
  // receive response from api with bytes from PDF to URL firebase
  // First, we need to decode the response from the API, which is likely in base64 format
  Uint8List bytes = Uint8List.fromList(base64.decode(apiResponse!));

  // Next, we need to create a reference to the Firebase storage location where we want to upload the PDF
  final Reference storageRef =
      FirebaseStorage.instance.ref().child('pdfs').child('example.pdf');

  // Finally, we can upload the bytes to Firebase storage and return the download URL
  final UploadTask uploadTask = storageRef.putData(bytes);
  final TaskSnapshot downloadUrl = await uploadTask.whenComplete(() => null);
  final String url = await downloadUrl.ref.getDownloadURL();

  return url;
}

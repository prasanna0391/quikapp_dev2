import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

Future<FirebaseOptions> loadFirebaseOptionsFromJson() async {
  final jsonStr = await rootBundle.loadString('assets/google-services.json');
  final jsonMap = json.decode(jsonStr);
  final client = jsonMap['client'][0];
  return FirebaseOptions(
    apiKey: client['api_key'][0]['current_key'],
    appId: client['client_info']['mobilesdk_app_id'],
    messagingSenderId: jsonMap['project_info']['project_number'],
    projectId: jsonMap['project_info']['project_id'],
    storageBucket: jsonMap['project_info']['storage_bucket'],
  );
}

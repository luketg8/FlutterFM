import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_fm/core/view/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  //The app requires a .env file with an 'api_key' for LastFM
  await dotenv.load(fileName: '.env');

  runApp(
    const ProviderScope(
      child: FlutterFMApp(),
    ),
  );
}

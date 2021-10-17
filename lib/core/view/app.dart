import 'package:flutter/material.dart';
import 'package:flutter_fm/search/search.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'colors.dart';
import 'context_extensions.dart';

class FlutterFMApp extends StatelessWidget {
  const FlutterFMApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (BuildContext context) => context.strings.appTitle,
      localizationsDelegates: const [
        AppLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.black,
        ),
        primaryColor: FlutterFMColors.lastFmRed,
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(),
        ),
      ),
      home: SearchScreen(),
    );
  }
}

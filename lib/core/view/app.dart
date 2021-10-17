import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      ),
      home: Scaffold(
        appBar: AppBar(
          title: SvgPicture.asset(
            'assets/logo.svg',
            height: 32,
          ),
        ),
        body: Container(),
      ),
    );
  }
}

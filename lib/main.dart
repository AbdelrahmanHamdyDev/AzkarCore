import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:azkarcore/Theme.dart';

import 'package:azkarcore/Screen/homeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(
      MaterialApp(
        theme: LightTheme,
        darkTheme: DarkTheme,
        home: SelectionScreen(),
      ),
    );
  });
}

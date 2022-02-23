import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

import 'feature/intro/views/intro_screen.dart';

late final CorePalette? _materialYouTheme;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _materialYouTheme = await DynamicColorPlugin.getCorePalette();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:
            Color(_materialYouTheme?.secondary.get(10) ?? 0x000000).withAlpha(250),
        cardColor: Color(_materialYouTheme?.primary.get(90) ?? 0x1e90ff),
      ),
      home: const IntroScreen(),
    );
  }
}

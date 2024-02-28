import 'package:craftybay/presentation/utility/color_palette.dart';
import 'package:flutter/material.dart';

import '../presentation/ui/screens/splash_screen.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      theme: ThemeData(
        primaryColor: const Color(0xFF03225D),
        primarySwatch: MaterialColor(
            ColorPalette.primarycolor.value, ColorPalette().color),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Color(0xFF03225D),
        ),
      ),
    );
  }
}

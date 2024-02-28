import 'package:craftybay/presentation/utility/app_colors.dart';
import 'package:flutter/material.dart';

import '../presentation/ui/screens/splash_screen.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      theme: ThemeData(
        primaryColor: const Color(0xFF07ADAE),
        primarySwatch:
            MaterialColor(AppColors.primaryColor.value, AppColors().color),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Color(0xFF03225D),
        ),
      ),
    );
  }
}

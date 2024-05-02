import 'package:craftybay/presentation/ui/screens/auth/email_verificationscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utility/image_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }

  void goToNextScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAll(const EmailVerification());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: SvgPicture.asset(
              ImageAssets.craftybaylogoSVG,
              width: 120,
            ),
          ),
          const Spacer(),
          const CircularProgressIndicator(
            color: Color(0xFF03225D),
          ),
          const SizedBox(height: 16),
          const Text('Version 1.0.0'),
        ],
      ),
    );
  }
}

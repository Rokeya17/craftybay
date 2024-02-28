import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utility/image_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
          const Text('Version 1.0.0'),
        ],
      ),
    );
  }
}

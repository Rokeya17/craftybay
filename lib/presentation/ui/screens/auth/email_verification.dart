import 'package:craftybay/presentation/ui/screens/auth/otp_verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../utility/image_assets.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Center(
                child: SvgPicture.asset(
                  ImageAssets.craftybaylogoSVG,
                  width: 120,
                ),
              ),
              const SizedBox(width: 16),
              Text('Welcome Back',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 24, color: Colors.black)),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter your Email',
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(const OTPVerification());
                    },
                    child: const Text('Next')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

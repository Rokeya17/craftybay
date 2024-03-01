import 'package:craftybay/presentation/ui/screens/auth/complete_profile_screen.dart';
import 'package:craftybay/presentation/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../utility/image_assets.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({super.key});

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                Text('Enter your OTP code',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 24, color: Colors.black)),
                const SizedBox(height: 8),
                Text(
                  'A 4 digit OTP code has been send',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  child: PinCodeTextField(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    appContext: context,
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.slide,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      selectedFillColor: AppColors.primaryColor,
                    ),
                    animationDuration: const Duration(milliseconds: 120),
                    backgroundColor: Colors.white,
                    enableActiveFill: true,
                    onCompleted: (v) {},
                    onChanged: (value) {
                      setState(() {});
                    },
                    beforeTextPaste: (text) {
                      return true;
                    },
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.offAll(const CompleteProfile());
                      },
                      child: const Text('Next')),
                ),
                const SizedBox(height: 8),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(text: "Didn't receive the code?"),
                    ],
                  ),
                ),
                SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Resend'),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:craftybay/presentation/state_holders/otpverification_controller.dart';
import 'package:craftybay/presentation/ui/screens/auth/complete_profile_screen.dart';
import 'package:craftybay/presentation/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../utility/image_assets.dart';
import '../bottom_nav_screen.dart';

class OTPVerification extends StatefulWidget {
  final String email;

  const OTPVerification({super.key, required this.email});

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  final TextEditingController _otpTEController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
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
                    controller: _otpTEController,
                    keyboardType: TextInputType.number,
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
                    child: GetBuilder<OtpVerificationController>(
                        builder: (controller) {
                      if (controller.otpVerificationInprogress) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return TextButton(
                        onPressed: () async {
                          if (_formkey.currentState!.validate()) {
                            final response = await controller.verifyOtp(
                                _otpTEController.text.trim(), widget.email);
                            if (response) {
                              Get.offAll(() => BottomNavigationScreen);
                            } else {
                              if (mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        'OTP verification failed! Try again?'),
                                  ),
                                );
                              }
                            }
                          }
                        },
                        child: const Text('Resend.'),
                      );
                    })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

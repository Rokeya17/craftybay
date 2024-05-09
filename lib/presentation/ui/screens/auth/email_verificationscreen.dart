import 'package:craftybay/presentation/state_holders/email_verification_controller.dart';
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
  final TextEditingController _emailTEcontroller = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formkey,
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
                    controller: _emailTEcontroller,
                    decoration: const InputDecoration(
                      labelText: 'Enter your Email',
                    ),
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter your email address';
                      } else if (text!.isEmail == false) {
                        return 'Enter your valid email address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: GetBuilder<EmailVerificationController>(
                        builder: (controller) {
                      if (controller.emailVerificationInProgress) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return ElevatedButton(
                          onPressed: () async {
                            if (_formkey.currentState!.validate()) {
                              final response = await controller
                                  .verifyemail(_emailTEcontroller.text.trim());
                              if (response) {
                                Get.to(() => const OTPVerification());
                              } else {
                                if (mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          'Email Verification failed! Try again?'),
                                    ),
                                  );
                                }
                              }
                            }
                          },
                          child: const Text('Next'));
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              const SizedBox(width: 16),
              Text('Please enter your email address',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.blueGrey)),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  disabledBorder: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: () {}, child: const Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}

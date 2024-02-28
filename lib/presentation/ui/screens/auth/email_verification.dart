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
            Text('Welcome Back',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 24)),
            Text(
              'Please enter your email address',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const TextField(),
            ElevatedButton(onPressed: () {}, child: const Text('Next'))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utility/image_assets.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Center(
                  child: SvgPicture.asset(
                    ImageAssets.craftybaylogoSVG,
                    width: 120,
                  ),
                ),
                const Spacer(),
                const SizedBox(
                  height: 10,
                ),
                Text('Complete Profile',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 24, color: Colors.black)),
                const SizedBox(height: 8),
                Text('Get started with us with your detail',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 12, color: Colors.grey)),
                const SizedBox(height: 16),
                TextFormField(),
                const SizedBox(height: 16),
                TextFormField(),
                const SizedBox(height: 16),
                TextFormField(),
                const SizedBox(height: 16),
                TextFormField(),
                const SizedBox(height: 16),
                TextFormField(
                  style: const TextStyle(
                    height: 7,
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Complete')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

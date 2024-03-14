import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'create_review_screen.dart';

class DisplayReviewScreen extends StatelessWidget {
  const DisplayReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Review'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.to(const CreateReviewScreen());
              },
              child: const Icon(Icons.add)),
        ));
  }
}

import 'package:craftybay/presentation/ui/screens/create_review_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                Get.to(CreateReviewScreen());
              },
              child: const Icon(Icons.add)),
        ));
  }
}

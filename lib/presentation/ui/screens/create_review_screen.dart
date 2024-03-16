import 'package:craftybay/presentation/ui/screens/display_review_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateReviewScreen extends StatefulWidget {
  const CreateReviewScreen({super.key});

  @override
  State<CreateReviewScreen> createState() => _CreateReviewScreenState();
}

class _CreateReviewScreenState extends State<CreateReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const BackButton(),
        title: const Text('Create Review'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(label: Text('First Name')),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(label: Text('Last Name')),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(label: Text('Write Review')),
                maxLines: 20,
                minLines: 10,
              ),
    SizedBox(
    width: double.infinity,
    child: Visibility(
    visible: _reviewInProgress == false,
    replacement: const Center(
    child: CircularProgressIndicator()),
    child: ElevatedButton(
    onPressed: () {
    _printDataFromField();
    },
    child: const Text('Submit'),
            ],

          ),
        ),
      ),
    );
  }
}

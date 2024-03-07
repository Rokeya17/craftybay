import 'package:flutter/material.dart';

import '../../widgets/home/product_card.dart';

class SpecialScreen extends StatefulWidget {
  const SpecialScreen({super.key});

  @override
  State<SpecialScreen> createState() => _SpecialScreenState();
}

class _SpecialScreenState extends State<SpecialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.white,
        title: const Text(
          'Special',
          style: TextStyle(color: Colors.black),
        ),
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
            itemCount: 20,
            itemBuilder: (context, index) {
              return const FittedBox(child: ProductCard());
            }),
      ),
    );
  }
}

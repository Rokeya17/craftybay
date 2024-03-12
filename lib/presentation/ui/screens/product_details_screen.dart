import 'package:craftybay/presentation/widgets/custom_stepper.dart';
import 'package:craftybay/presentation/widgets/home/product_image_slider.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ProductImageSlider(),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: const BackButton(
              color: Colors.blue,
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Nike Air shoe 270',
                  style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                ),
                CustomStepper(
                    lowerLimit: 1,
                    upperLimit: 10,
                    stepValue: 1,
                    value: 1,
                    onChange: (newValue) {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

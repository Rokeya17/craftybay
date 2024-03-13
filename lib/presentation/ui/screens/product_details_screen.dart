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
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                const ProductImageSlider(),
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: const BackButton(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  'Nike Air shoe 270',
                  style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                ),
                const Spacer(),
                CustomStepper(
                    lowerLimit: 1,
                    upperLimit: 10,
                    stepValue: 1,
                    value: 1,
                    onChange: (newValue) {}),
              ],
            ),
            const Row(
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '4.8',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Reviews',
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:craftybay/presentation/ui/screens/display_review_screen.dart';
import 'package:craftybay/presentation/utility/app_colors.dart';
import 'package:craftybay/presentation/widgets/custom_stepper.dart';
import 'package:craftybay/presentation/widgets/home/product_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: const Text(
                    'Nike Air shoe 270',
                    style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                  ),
                ),
                Row(
                  children: [
                    CustomStepper(
                        lowerLimit: 1,
                        upperLimit: 10,
                        stepValue: 1,
                        value: 1,
                        onChange: (newValue) {}),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18,
                    ),
                    Text(
                      '4.5',
                      style: TextStyle(fontSize: 15),
                    ),
                  ]),
              TextButton(
                onPressed: () {
                  Get.to(const DisplayReviewScreen());
                },
                child: const Text(
                  'Reviews',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Card(
                color: Colors.white54,
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 16,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}

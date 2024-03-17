import 'package:craftybay/presentation/ui/screens/display_review_screen.dart';
import 'package:craftybay/presentation/widgets/custom_stepper.dart';
import 'package:craftybay/presentation/widgets/home/product_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<Color> colors = [
    Colors.black,
    Colors.blue,
    Colors.amber,
    Colors.green,
  ];
  int _selectedcolors =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const ProductImageSlider(),
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: const Text(
                    'Product Details',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: const BackButton(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nike Shoes Air270',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      CustomStepper(
                        lowerLimit: 1,
                        upperLimit: 20,
                        stepValue: 1,
                        value: 1,
                        onChange: (newValue) {},
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      const Text(
                        '4.8',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(const DisplayReviewScreen());
                        },
                        child: const Text(
                          'Reviews',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
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
                      ),
                    ],
                  ),
                  const Text(
                    'Color',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                    child: ListView.builder(
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return const CircleAvatar(
                          backgroundColor: colors[index],
                            child: ,
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

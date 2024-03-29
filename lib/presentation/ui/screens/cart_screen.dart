import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../state_holders/nav_bottom_controller.dart';
import '../../utility/app_colors.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            'Carts',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.find<BottomNavController>().backtohome();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black54,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 90,
                        color: AppColors.primaryColor,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text('Nike shoes'),
                              ],
                            ),
                            RichText(
                              text: const TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(text: 'color:blue'),
                                    TextSpan(text: 'color:blue')
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(0.3),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Price"),
                      Text("\$204",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryColor)),
                    ],
                  ),
                  SizedBox(
                      width: 120,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Checkout",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                          )))
                ],
              ),
            ),
          ],
        ));
  }
}

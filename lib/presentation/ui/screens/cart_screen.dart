import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
      // Container(
      //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      //   decoration: BoxDecoration(
      //       color: AppColors.primaryColor.withOpacity(0.1),
      //       borderRadius: const BorderRadius.only(
      //         topLeft: Radius.circular(16),
      //         topRight: Radius.circular(16),
      //       )),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       const Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Text(
      //             'Total Price',
      //             style: TextStyle(
      //                 fontWeight: FontWeight.w600,
      //                 fontSize: 16,
      //                 color: Colors.black54),
      //           ),
      //           SizedBox(
      //             height: 4,
      //           ),
      //           Text(
      //             '\$.',
      //             style: TextStyle(
      //                 fontWeight: FontWeight.w600,
      //                 fontSize: 18,
      //                 color: AppColors.primaryColor),
      //           ),
      //         ],
      //       ),
      //       SizedBox(
      //         width: 120,
      //         child: ElevatedButton(
      //           onPressed: () {},
      //           child: const Text('Checkout'),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}

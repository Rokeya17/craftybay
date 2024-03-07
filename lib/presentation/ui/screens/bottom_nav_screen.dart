import 'package:craftybay/presentation/state_holders/nav_bottom_controller.dart';
import 'package:craftybay/presentation/ui/screens/category_list_screen.dart';
import 'package:craftybay/presentation/ui/screens/home_screen.dart';
import 'package:craftybay/presentation/ui/screens/wish_list_screen.dart';
import 'package:craftybay/presentation/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  BottomNavController bottomNavController = Get.put(BottomNavController());

  final List<Widget> _screens = [
    const HomeScreen(),
    const CategoryListScreen(),
    const HomeScreen(),
    const WishListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(builder: (controller) {
      return Scaffold(
        body: GetBuilder<BottomNavController>(builder: (controller) {
          return _screens[bottomNavController.CurrentSelectedIndex];
        }),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.CurrentSelectedIndex,
          onTap: controller.ChnageScreen,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'Wishlist'),
          ],
        ),
      );
    });
  }
}

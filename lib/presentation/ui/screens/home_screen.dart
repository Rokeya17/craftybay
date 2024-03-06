import 'package:craftybay/presentation/ui/screens/category_list_screen.dart';
import 'package:craftybay/presentation/widgets/category_card.dart';
import 'package:craftybay/presentation/widgets/home/homeslider.dart';
import 'package:craftybay/presentation/widgets/home/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utility/image_assets.dart';
import '../../widgets/circular_iconbutton.dart';
import '../../widgets/home/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(children: [
          SvgPicture.asset(ImageAssets.craftybaylogonavSVG),
          const Spacer(),
          CircularIconButton(
            onTap: () {},
            icon: Icons.person,
          ),
          const SizedBox(
            width: 8,
          ),
          CircularIconButton(
            onTap: () {},
            icon: Icons.notifications,
          ),
          const SizedBox(
            width: 8,
          ),
          CircularIconButton(
            onTap: () {},
            icon: Icons.message,
          ),
        ]),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(children: [
              const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    )),
              ),
              const SizedBox(
                height: 16,
              ),
              const HomeSlider(),
              SectionHeader(
                onTap: () {
                  Get.to(const CategoryListScreen());
                },
                title: 'Categories',
              ),
              SizedBox(
                height: 90,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const CategoryCard();
                    }),
              ),
              SectionHeader(
                onTap: () {},
                title: 'Popular',
              ),
              SizedBox(
                height: 165,
                child: ListView.builder(
                    itemCount: 20,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const ProductCard();
                    }),
              ),
              SectionHeader(
                onTap: () {},
                title: 'Special',
              ),
              SizedBox(
                height: 165,
                child: ListView.builder(
                    itemCount: 20,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const ProductCard();
                    }),
              ),
              SectionHeader(
                onTap: () {},
                title: 'New',
              ),
              SizedBox(
                height: 165,
                child: ListView.builder(
                    itemCount: 20,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const ProductCard();
                    }),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

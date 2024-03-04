import 'package:craftybay/presentation/utility/app_colors.dart';
import 'package:craftybay/presentation/utility/image_assets.dart';
import 'package:craftybay/presentation/widgets/home/homeslider.dart';
import 'package:craftybay/presentation/widgets/home/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/circular_iconbutton.dart';

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
                onTap: () {},
                title: 'Categories',
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor.withOpacity(0.3)),
                        child: const Icon(Icons.shop),
                      );
                    }),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

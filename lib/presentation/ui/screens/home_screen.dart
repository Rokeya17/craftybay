import 'package:craftybay/presentation/utility/app_colors.dart';
import 'package:craftybay/presentation/widgets/category_card.dart';
import 'package:craftybay/presentation/widgets/home/homeslider.dart';
import 'package:craftybay/presentation/widgets/home/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utility/image_assets.dart';
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
              Card(
                shadowColor: AppColors.primaryColor.withOpacity(0.1),
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: SizedBox(
                  width: 100,
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                          image: const DecorationImage(
                              image: AssetImage(
                            ImageAssets.shoepng,
                          )),
                          color: AppColors.primaryColor.withOpacity(0.1),
                        ),
                      ),
                      const Text(
                        'Nike shoes Ak10203040',
                        maxLines: 1,
                        style: TextStyle(overflow: TextOverflow.ellipsis),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$90'),
                          Wrap(children: [
                            Icon(
                              Icons.star_border,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Text('90'),
                          ]),
                          Card(
                            color: Colors.red,
                            child: Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Icon(
                                Icons.favorite_border,
                                size: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

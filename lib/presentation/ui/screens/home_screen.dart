import 'package:carousel_slider/carousel_slider.dart';
import 'package:craftybay/presentation/utility/app_colors.dart';
import 'package:craftybay/presentation/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/circular_iconbutton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ValueNotifier<int> _selectedSlider = ValueNotifier(0);
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
              CarouselSlider(
                options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    onPageChanged: (int page, _) {
                      _selectedSlider.value = page;
                    }),
                items: [1, 2, 3].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: const BoxDecoration(color: Colors.blue),
                          child: Text(
                            'text $i',
                            style: const TextStyle(fontSize: 16.0),
                          ));
                    },
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 16,
              ),
              ValueListenableBuilder(
                  valueListenable: _selectedSlider,
                  builder: (context, value, _) {
                    List<Widget> list = [];

                    for (int i = 0; i < 3; i++) {
                      list.add(
                        Container(
                          height: 10,
                          width: 10,
                          margin: const EdgeInsets.symmetric(horizontal: 1.5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                              color:
                                  value == i ? AppColors.primaryColor : null),
                        ),
                      );
                    }

                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: list,
                    );
                  }),
            ]),
          ),
        ),
      ),
    );
  }
}

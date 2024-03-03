import 'package:craftybay/presentation/utility/image_assets.dart';
import 'package:craftybay/presentation/widgets/home/homeslider.dart';
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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(children: [
              TextField(
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
              SizedBox(
                height: 16,
              ),
              HomeSlider(),
              SizedBox(
                height: 16,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

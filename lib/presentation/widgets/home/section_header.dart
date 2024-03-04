import 'package:flutter/material.dart';

class SectionHeader extends StatefulWidget {
  const SectionHeader({super.key});

  @override
  State<SectionHeader> createState() => _SectionHeaderState();
}

class _SectionHeaderState extends State<SectionHeader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const Text(
        'Categories',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      TextButton(
        onPressed: () {},
        child: const Text(
          'See All',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      )
    ]);
  }
}

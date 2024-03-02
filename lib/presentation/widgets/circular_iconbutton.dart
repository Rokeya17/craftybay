import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  const CircularIconButton(
      {super.key, required this.icon, required this.onTap});
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: CircleAvatar(
        backgroundColor: Colors.black12,
        radius: 16,
        child: Icon(
          icon,
          color: Colors.grey,
          size: 20,
        ),
      ),
    );
  }
}

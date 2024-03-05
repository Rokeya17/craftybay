import 'package:flutter/material.dart';

import '../utility/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.primaryColor.withOpacity(0.1)),
            child: const Icon(Icons.shop),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Electronics',
            style: TextStyle(letterSpacing: 0.4),
          ),
        ],
      ),
    );
  }
}

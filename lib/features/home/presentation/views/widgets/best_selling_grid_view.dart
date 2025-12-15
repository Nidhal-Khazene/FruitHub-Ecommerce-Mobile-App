import 'package:ecommerce_app/features/home/presentation/views/widgets/featured_item.dart';
import 'package:flutter/material.dart';

class FeaturedGridView extends StatelessWidget {
  const FeaturedGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
      ),
      itemBuilder: (context, index) => FeaturedItem(),
    );
  }
}

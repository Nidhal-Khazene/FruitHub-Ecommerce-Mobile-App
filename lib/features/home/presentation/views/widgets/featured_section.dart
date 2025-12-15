import 'package:ecommerce_app/core/widgets/fruit_item.dart';
import 'package:flutter/material.dart';

import 'best_seller_header.dart';
import 'featured_carousel_view.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FeaturedCarouselView(),
        SizedBox(height: 12),
        BestSellerHeader(),
        SizedBox(height: 12),
        FruitItem(),
      ],
    );
  }
}

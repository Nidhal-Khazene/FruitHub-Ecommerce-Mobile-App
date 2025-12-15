import 'package:ecommerce_app/features/home/presentation/views/widgets/featured_item.dart';
import 'package:flutter/material.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: CarouselView(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            itemSnapping: true,
            itemExtent: MediaQuery.sizeOf(context).width,
            children: List.generate(3, (index) => const FeaturedItem()),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'featured_item.dart';

class FeaturedCarouselView extends StatefulWidget {
  const FeaturedCarouselView({super.key});

  @override
  State<FeaturedCarouselView> createState() => _FeaturedCarouselViewState();
}

class _FeaturedCarouselViewState extends State<FeaturedCarouselView> {
  late CarouselController _carouselController;
  @override
  void initState() {
    _carouselController = CarouselController();
    _carouselController.animateTo(
      150,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.ease,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: CarouselView.weighted(
        controller: _carouselController,
        flexWeights: [1, 20, 1],
        itemSnapping: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        children: List.generate(3, (index) => const FeaturedItem()),
      ),
    );
  }
}

import 'package:ecommerce_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/custom_home_search.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/featured_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomHomeAppBar()),
        SliverToBoxAdapter(child: CustomHomeSearch()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: FeaturedSection()),
      ],
    );
  }
}

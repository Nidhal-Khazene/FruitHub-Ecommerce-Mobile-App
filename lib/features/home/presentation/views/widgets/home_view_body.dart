import 'package:ecommerce_app/core/cubits/products_cubit/products_cubit.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/custom_home_search.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/featured_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_selling_grid_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.read<ProductsCubit>().getBestSellingProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomHomeAppBar()),
        SliverToBoxAdapter(child: CustomHomeSearch()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: FeaturedSection()),
        BestSellingGridView(),
      ],
    );
  }
}

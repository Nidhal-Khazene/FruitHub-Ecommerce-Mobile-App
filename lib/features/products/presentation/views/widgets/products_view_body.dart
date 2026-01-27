import 'package:ecommerce_app/features/products/presentation/views/widgets/products_app_bar.dart';
import 'package:ecommerce_app/features/products/presentation/views/widgets/products_search_bar.dart';
import 'package:flutter/material.dart';

class ProductsViewBody extends StatelessWidget {
  const ProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductsAppBar(),
          SizedBox(height: 16),
          ProductsSearchBar(),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

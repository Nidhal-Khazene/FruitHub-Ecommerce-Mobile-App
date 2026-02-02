import 'package:ecommerce_app/features/cart/presentation/views/cart_view.dart';
import 'package:ecommerce_app/features/home/presentation/views/home_view.dart';
import 'package:ecommerce_app/features/products/presentation/views/products_view.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBarBody extends StatelessWidget {
  const CustomBottomNavigationBarBody({super.key, required this.selectedIndex});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: selectedIndex,
      children: const [HomeView(), ProductsView(), CartView(), Placeholder()],
    );
  }
}

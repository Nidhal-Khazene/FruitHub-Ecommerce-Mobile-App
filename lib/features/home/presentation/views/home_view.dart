import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:ecommerce_app/features/home/domain/entities/bottom_nav_bar_entity.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = "homeView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        bottomNavBarEntity: BottomNavBarEntity(),
      ),
      body: const SafeArea(
        child: Padding(padding: kPrimaryScreenPadding, child: HomeViewBody()),
      ),
    );
  }
}

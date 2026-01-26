import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:ecommerce_app/features/home/domain/entities/bottom_nav_bar_entity.dart';
import 'package:ecommerce_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  static const routeName = "MainView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        bottomNavBarEntity: BottomNavBarEntity(),
      ),
      body: const SafeArea(
        child: Padding(padding: kPrimaryScreenPadding, child: HomeView()),
      ),
    );
  }
}

import 'package:ecommerce_app/core/helper_functions/on_generate_route.dart';
import 'package:ecommerce_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FruitHubApp());
}

class FruitHubApp extends StatelessWidget {
  const FruitHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.splashViewRoute,
    );
  }
}

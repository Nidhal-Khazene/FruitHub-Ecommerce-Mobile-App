import 'package:ecommerce_app/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:ecommerce_app/features/auth/presentation/views/login_view.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:ecommerce_app/features/cart/presentation/views/cart_view.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/checkout_view.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/track_order_view.dart';
import 'package:ecommerce_app/features/home/presentation/views/home_view.dart';
import 'package:ecommerce_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:ecommerce_app/features/products/presentation/views/products_view.dart';
import 'package:ecommerce_app/features/profile/presentation/views/widgets/personal_profile_view.dart';
import 'package:ecommerce_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/views/signup_view.dart';
import '../../features/best_selling/presentation/views/best_selling_view.dart';
import '../../features/checkout/presentation/views/widgets/payment_success_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (context) => const BestSellingView());
    case ProductsView.routeName:
      return MaterialPageRoute(builder: (context) => const ProductsView());
    case CustomBottomNavigationBar.routeName:
      return MaterialPageRoute(
        builder: (context) => const CustomBottomNavigationBar(),
      );
    case CartView.routeName:
      return MaterialPageRoute(builder: (context) => const CartView());
    case CheckoutView.routeName:
      return MaterialPageRoute(
        builder: (context) =>
            CheckoutView(cartEntity: settings.arguments as CartEntity),
      );
    case PaymentSuccessView.routeName:
      return MaterialPageRoute(
        builder: (context) => const PaymentSuccessView(),
      );
    case TrackOrderView.routeName:
      return MaterialPageRoute(builder: (context) => const TrackOrderView());
    case PersonalProfileView.routeName:
      return MaterialPageRoute(
        builder: (context) => const PersonalProfileView(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const CustomBottomNavigationBar(),
      );
  }
}

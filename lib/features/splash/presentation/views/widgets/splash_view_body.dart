import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset(Assets.assetsImagesPlant),
        ),
        SvgPicture.asset(Assets.assetsImagesLogoSplash),
        SvgPicture.asset(Assets.assetsImagesCirclesSplash, fit: BoxFit.fill),
      ],
    );
  }

  void executeNavigation() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(context, OnBoardingView.routeName),
    );
  }
}

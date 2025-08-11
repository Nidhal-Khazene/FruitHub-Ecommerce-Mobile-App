import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: OnBoardingPageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: ColorData.kPrimaryColor,
            color: ColorData.kPrimaryColor.withValues(alpha: 0.5),
          ),
        ),
      ],
    );
  }
}

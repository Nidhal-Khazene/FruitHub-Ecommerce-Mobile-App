import 'package:ecommerce_app/features/checkout/presentation/views/widgets/custom_checkout_steps_header.dart';
import 'package:flutter/material.dart';

import 'checkout_button.dart';
import 'checkout_steps_page_view.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController _pageController;
  int currentIndexPage = 0;

  @override
  void initState() {
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentIndexPage = _pageController.page!.toInt();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCheckoutStepsHeader(
          currentIndexPage: currentIndexPage,
          pageController: _pageController,
        ),
        Expanded(child: CheckoutStepsPageView(pageController: _pageController)),
        CheckoutButton(pageController: _pageController),
        const SizedBox(height: 64),
      ],
    );
  }
}

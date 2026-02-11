import 'package:ecommerce_app/features/checkout/presentation/views/widgets/custom_checkout_steps_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/helper/show_false_snack_bar.dart';
import '../../../domain/entities/order_entity.dart';
import '../checkout_view.dart';
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
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late AddressStepScope addressStepScope;
  late PaymentsStepScope paymentsStepScope;
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
    addressStepScope = context.read<AddressStepScope>();
    paymentsStepScope = context.read<PaymentsStepScope>();
    return Column(
      children: [
        CustomCheckoutStepsHeader(
          onTap: (index) {
            if (index == 1) {
              _handleShippingSection(context);
            } else if (index == 2) {
              _handleAddressSection();
            } else if (index == 3) {
              _handlePaymentSection();
            } else {
              _pageController.animateToPage(
                currentIndexPage,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            }
          },
          currentIndexPage: currentIndexPage,
          pageController: _pageController,
        ),
        Expanded(child: CheckoutStepsPageView(pageController: _pageController)),
        CheckoutButton(pageController: _pageController),
        const SizedBox(height: 32),
      ],
    );
  }

  void _handleShippingSection(BuildContext context) {
    if (context.read<OrderEntity>().payWithCash != null) {
      _pageController.animateToPage(
        currentIndexPage + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.bounceIn,
      );
    } else {
      showFalseSnackBar(context, errorMessage: "اختر طريقة الدفع ");
    }
  }

  void _handleAddressSection() {
    if (addressStepScope.key.currentState!.validate()) {
      addressStepScope.key.currentState!.save();
      _pageController.animateToPage(
        currentIndexPage + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.bounceIn,
      );
    } else {
      addressStepScope.autovalidateMode = AutovalidateMode.always;
    }
  }

  void _handlePaymentSection() {
    if (paymentsStepScope.key.currentState!.validate()) {
      paymentsStepScope.key.currentState!.save();
      _pageController.animateToPage(
        currentIndexPage + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.bounceIn,
      );
    } else {
      paymentsStepScope.autovalidateMode = AutovalidateMode.always;
    }
  }
}

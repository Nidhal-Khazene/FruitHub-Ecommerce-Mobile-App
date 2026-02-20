import 'package:ecommerce_app/core/helper/show_false_snack_bar.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';
import 'package:ecommerce_app/features/checkout/presentation/manager/add_order_cubit/add_order_cubit.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/payment_success_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../checkout_view.dart';

class CheckoutButton extends StatefulWidget {
  const CheckoutButton({super.key, required PageController pageController})
    : _pageController = pageController;

  final PageController _pageController;

  static const List<String> titles = [
    "التالي",
    "التالي",
    "تأكيد & استمرار",
    "تأكيد الطلب",
  ];

  @override
  State<CheckoutButton> createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  int pageNumber = 0;
  late AddressStepScope addressStepScope;
  late PaymentsStepScope paymentsStepScope;

  @override
  void initState() {
    super.initState();

    widget._pageController.addListener(() {
      final int newPage = widget._pageController.page?.round() ?? 0;

      if (newPage != pageNumber) {
        setState(() {
          pageNumber = newPage;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    addressStepScope = context.read<AddressStepScope>();
    paymentsStepScope = context.read<PaymentsStepScope>();
    return CustomButton(
      onPressed: () {
        if (pageNumber == CheckoutButton.titles.length - 1) {
          Navigator.pushNamed(context, PaymentSuccessView.routeName);
        }
        if (pageNumber == 0) {
          _handleShippingSection(context);
        } else if (pageNumber == 1) {
          _handleAddressSection();
        } else if (pageNumber == 2) {
          _handlePaymentSection();
        } else {
          var orderEntity = context.read<OrderEntity>();
          context.read<AddOrderCubit>().addOrder(orderEntity);
        }
      },
      text: CheckoutButton
          .titles[pageNumber.clamp(0, CheckoutButton.titles.length - 1)],
      textStyle: AppStyles.bold16.copyWith(color: Colors.white),
    );
  }

  void _handleShippingSection(BuildContext context) {
    if (context.read<OrderEntity>().payWithCash != null) {
      widget._pageController.animateToPage(
        pageNumber + 1,
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
      widget._pageController.animateToPage(
        pageNumber + 1,
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
      widget._pageController.animateToPage(
        pageNumber + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.bounceIn,
      );
    } else {
      paymentsStepScope.autovalidateMode = AutovalidateMode.always;
    }
  }
}

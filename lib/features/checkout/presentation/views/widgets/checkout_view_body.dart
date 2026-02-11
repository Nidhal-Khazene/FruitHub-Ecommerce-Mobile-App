import 'package:ecommerce_app/features/checkout/presentation/views/widgets/custom_checkout_steps_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/helper/show_false_snack_bar.dart';
import '../../../domain/entities/order_entity.dart';
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
  ValueNotifier<AutovalidateMode> valueNotifier = ValueNotifier(
    AutovalidateMode.disabled,
  );

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
    valueNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AddressStepScope>(create: (_) => AddressStepScope()),
        Provider<PaymentsStepScope>(create: (_) => PaymentsStepScope()),
      ],
      child: Column(
        children: [
          CustomCheckoutStepsHeader(
            onTap: () {
              if (context.read<OrderEntity>().payWithCash != null) {
                _pageController.animateToPage(
                  currentIndexPage,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              } else {
                showFalseSnackBar(
                  context,
                  errorMessage: "يرجى تحديد طريقة الدفع",
                );
              }
            },
            currentIndexPage: currentIndexPage,
            pageController: _pageController,
          ),
          Expanded(
            child: CheckoutStepsPageView(pageController: _pageController),
          ),
          CheckoutButton(pageController: _pageController),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class AddressStepScope {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
}

class PaymentsStepScope {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
}

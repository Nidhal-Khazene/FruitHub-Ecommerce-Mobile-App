import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/cart/presentation/views/widgets/cart_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Center(
                child: Container(
                  height: 41,
                  width: double.infinity,
                  color: const Color(0xFFEBF9F1),
                  child: Center(
                    child: Text(
                      "لديك 3 منتجات في سله التسوق",
                      textAlign: TextAlign.center,
                      style: AppStyles.regular13.copyWith(
                        color: ColorData.kPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Column(children: List.generate(3, (_) => const CartItem())),
            ],
          ),
        ),
        Positioned(
          left: 16,
          right: 16,
          top: MediaQuery.sizeOf(context).height * .7,
          child: CustomButton(
            text: "الدفع  120جنيه",
            textStyle: AppStyles.bold16.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

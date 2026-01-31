import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
        ],
      ),
    );
  }
}

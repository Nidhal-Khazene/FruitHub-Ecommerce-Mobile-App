import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../manager/cubits/cart_cubit/cart_cubit.dart';
import '../../manager/cubits/cart_item_cubit/cart_item_cubit.dart';

class CustomCartViewPriceButton extends StatelessWidget {
  const CustomCartViewPriceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      builder: (context, state) => CustomButton(
        text:
            "الدفع  ${context.watch<CartCubit>().cartEntity.calculateTotalPriceItems()}  جنيه",
        textStyle: AppStyles.bold16.copyWith(color: Colors.white),
      ),
    );
  }
}

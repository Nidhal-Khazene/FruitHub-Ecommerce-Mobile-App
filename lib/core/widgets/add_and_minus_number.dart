import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../features/cart/presentation/manager/cubits/cart_item_cubit/cart_item_cubit.dart';
import '../utils/colors.dart';
import '../utils/styles.dart';

class AddAndMinusNumber extends StatelessWidget {
  const AddAndMinusNumber({super.key, required this.cartItemEntity});
  final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            cartItemEntity.increaseCount();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
          },
          child: CircleAvatar(
            radius: 12,
            backgroundColor: ColorData.kPrimaryColor,
            child: const Icon(Iconsax.add_copy, color: Colors.white, size: 20),
          ),
        ),
        const SizedBox(width: 16),
        Text(cartItemEntity.count.toString(), style: AppStyles.bold16),
        const SizedBox(width: 16),
        GestureDetector(
          onTap: () {
            cartItemEntity.decreaseCount();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
          },
          child: const CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xFFF1F1F5),
            child: Icon(Iconsax.minus_copy, color: Color(0xFF969899), size: 20),
          ),
        ),
      ],
    );
  }
}

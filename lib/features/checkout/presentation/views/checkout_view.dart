import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/helper/get_user.dart';
import 'package:ecommerce_app/core/repos/orders_repo/order_repo.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/payment_card_entity.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/shipping_address_entity.dart';
import 'package:ecommerce_app/features/checkout/presentation/manager/add_order_cubit/add_order_cubit.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/add_order_cubit_bloc_builder.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../core/services/service_locator.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key, required this.cartEntity});

  final CartEntity cartEntity;

  static const routeName = "CheckoutView";

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  late OrderEntity orderEntity;

  @override
  void initState() {
    orderEntity = OrderEntity(
      uID: getUser()!.userId,
      paymentCardEntity: PaymentCardEntity(),
      cartEntity: widget.cartEntity,
      shippingAddressEntity: ShippingAddressEntity(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddOrderCubit(orderRepo: getIt.get<OrderRepo>()),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: kPrimaryScreenPadding,
            child: MultiProvider(
              providers: [
                Provider<OrderEntity>(create: (_) => orderEntity),
                Provider<AddressStepScope>(create: (_) => AddressStepScope()),
                Provider<PaymentsStepScope>(create: (_) => PaymentsStepScope()),
                Provider<PaymentsReviewStepScope>(
                  create: (_) => PaymentsReviewStepScope(),
                ),
              ],
              child: const AddOrderCubitBlocBuilder(child: CheckoutViewBody()),
            ),
          ),
        ),
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

class PaymentsReviewStepScope {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
}

import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/payment_card_entity.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/shipping_address_entity.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      paymentCardEntity: PaymentCardEntity(),
      cartEntity: widget.cartEntity,
      shippingAddressEntity: ShippingAddressEntity(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context, title: "الشحن"),
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
            child: const CheckoutViewBody(),
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

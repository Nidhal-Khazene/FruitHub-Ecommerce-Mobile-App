import 'package:ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/shipping_address_entity.dart';

class OrderEntity {
  final CartEntity cartEntity;
  bool? payWithCash;
  ShippingAddressEntity? shippingAddressEntity = ShippingAddressEntity();

  OrderEntity({
    required this.cartEntity,
    this.payWithCash,
    this.shippingAddressEntity,
  });
}

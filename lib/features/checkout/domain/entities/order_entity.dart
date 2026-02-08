import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/shipping_address_entity.dart';

class OrderEntity {
  final CartItemEntity cartItemEntity;
  final bool? payWithCash;
  final ShippingAddressEntity? shippingAddressEntity;

  OrderEntity({
    required this.cartItemEntity,
    this.payWithCash,
    this.shippingAddressEntity,
  });
}

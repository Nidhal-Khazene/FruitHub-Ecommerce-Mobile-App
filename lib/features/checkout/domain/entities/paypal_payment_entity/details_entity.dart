import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';

class DetailsEntity {
  String? subtotal;
  String? shipping;
  double? shippingDiscount;

  DetailsEntity({this.subtotal, this.shipping, this.shippingDiscount});

  Map<String, dynamic> toJson() => {
    'subtotal': subtotal,
    'shipping': shipping,
    'shipping_discount': shippingDiscount,
  };

  factory DetailsEntity.fromEntity(OrderInputEntity orderEntity) {
    return DetailsEntity(
      shipping: orderEntity.calculateShippingCost().toString(),
      shippingDiscount: orderEntity.calculateShippingDiscount(),
      subtotal: orderEntity.cartEntity.calculateTotalPriceItems().toString(),
    );
  }
}

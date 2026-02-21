import 'package:ecommerce_app/core/helper/get_currency.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';

import 'details_entity.dart';

class AmountEntity {
  String? total;
  String? currency;
  DetailsEntity? details;

  AmountEntity({this.total, this.currency, this.details});

  Map<String, dynamic> toJson() => {
    'total': total,
    'currency': currency,
    'details': details?.toJson(),
  };

  factory AmountEntity.fromEntity(OrderEntity orderEntity) {
    return AmountEntity(
      currency: getCurrency(),
      total: orderEntity
          .calculateTotalPriceAfterShippingAndDiscount()
          .toString(),
      details: DetailsEntity.fromEntity(orderEntity),
    );
  }
}

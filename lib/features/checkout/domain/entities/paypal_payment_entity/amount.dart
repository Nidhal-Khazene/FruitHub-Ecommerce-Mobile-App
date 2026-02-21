import 'package:ecommerce_app/core/helper/get_currency.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';

import 'details_entity.dart';

class Amount {
  String? total;
  String? currency;
  DetailsEntity? details;

  Amount({this.total, this.currency, this.details});

  Map<String, dynamic> toJson() => {
    'total': total,
    'currency': currency,
    'details': details?.toJson(),
  };

  factory Amount.fromEntity(OrderEntity orderEntity) {
    return Amount(
      currency: getCurrency(),
      total: orderEntity
          .calculateTotalPriceAfterShippingAndDiscount()
          .toString(),
      details: DetailsEntity.fromEntity(orderEntity),
    );
  }
}

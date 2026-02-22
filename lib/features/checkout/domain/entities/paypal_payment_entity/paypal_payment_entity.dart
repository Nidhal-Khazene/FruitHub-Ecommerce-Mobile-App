import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';

import 'amount_entity.dart';
import 'item_list.dart';

class PaypalPaymentEntity {
  AmountEntity? amount;
  String? description;
  ItemList? itemList;

  PaypalPaymentEntity({this.amount, this.description, this.itemList});

  factory PaypalPaymentEntity.fromEntity(OrderEntity orderEntity) {
    return PaypalPaymentEntity(
      amount: AmountEntity.fromEntity(orderEntity),
      description: "PayPal Payment Description",
      itemList: ItemList.fromEntity(orderEntity.cartEntity.cartItemsEntities),
    );
  }

  Map<String, dynamic> toJson() => {
    'amount': amount?.toJson(),
    'description': description,
    'item_list': itemList?.toJson(),
  };
}

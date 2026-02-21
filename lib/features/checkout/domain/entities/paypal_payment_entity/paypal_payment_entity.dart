import 'amount_entity.dart';
import 'item_list.dart';

class PaypalPaymentEntity {
  AmountEntity? amount;
  String? description;
  ItemList? itemList;

  PaypalPaymentEntity({this.amount, this.description, this.itemList});

  factory PaypalPaymentEntity.fromEntity(
    PaypalPaymentEntity paypalPaymentEntity,
  ) {
    return PaypalPaymentEntity(
      amount: paypalPaymentEntity.amount,
      description: paypalPaymentEntity.description,
      itemList: paypalPaymentEntity.itemList,
    );
  }

  Map<String, dynamic> toJson() => {
    'amount': amount?.toJson(),
    'description': description,
    'item_list': itemList?.toJson(),
  };
}

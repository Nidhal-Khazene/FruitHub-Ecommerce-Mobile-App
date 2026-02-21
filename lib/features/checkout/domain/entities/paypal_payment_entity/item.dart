import 'package:ecommerce_app/core/helper/get_currency.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';

class Item {
  String? name;
  int? quantity;
  String? price;
  String? currency;

  Item({this.name, this.quantity, this.price, this.currency});

  factory Item.fromEntity(CartItemEntity cartItemEntity) {
    return Item(
      currency: getCurrency(),
      name: cartItemEntity.productEntity.productName,
      price: cartItemEntity.productEntity.productPrice.toString(),
      quantity: cartItemEntity.quantity,
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'quantity': quantity,
    'price': price,
    'currency': currency,
  };
}

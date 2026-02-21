import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';

import 'item_entity.dart';

class ItemList {
  List<ItemEntity>? items;

  ItemList({this.items});

  factory ItemList.fromEntity(List<CartItemEntity> cartItemEntities) {
    return ItemList(
      items: cartItemEntities
          .map((cartItemEntity) => ItemEntity.fromEntity(cartItemEntity))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'items': items?.map((e) => e.toJson()).toList(),
  };
}

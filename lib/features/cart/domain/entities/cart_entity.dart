import 'package:ecommerce_app/core/entities/product_entity.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';

class CartEntity {
  List<CartItemEntity> cartItemsEntities = [];

  CartEntity({required this.cartItemsEntities});

  void addCartItem(CartItemEntity cartItemEntity) {
    cartItemsEntities.add(cartItemEntity);
  }

  bool isProductExist(ProductEntity productEntity) {
    for (var cartItemEntity in cartItemsEntities) {
      if (cartItemEntity.productEntity == productEntity) {
        return true;
      }
    }
    return false;
  }

  CartItemEntity getCartItemEntity(ProductEntity productEntity) {
    for (var cartItemEntity in cartItemsEntities) {
      if (cartItemEntity.productEntity == productEntity) {
        return cartItemEntity;
      }
    }
    return CartItemEntity(productEntity: productEntity, count: 1);
  }
}

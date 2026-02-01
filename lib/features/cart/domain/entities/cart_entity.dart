import 'package:ecommerce_app/core/entities/product_entity.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';

class CartEntity {
  List<CartItemEntity> cartItems = [];

  CartEntity({required this.cartItems});

  void addCartItem(CartItemEntity cartItemEntity) {
    cartItems.add(cartItemEntity);
  }

  bool isCartExist(ProductEntity productEntity) {
    for (var cartItem in cartItems) {
      if (cartItem.productEntity == productEntity) {
        return true;
      }
    }
    return false;
  }
}

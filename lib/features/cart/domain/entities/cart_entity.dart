import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';

class CartEntity {
  List<CartItemEntity> cartItems = [];

  CartEntity({required this.cartItems});

  void addCartItem(CartItemEntity cartItemEntity) {
    cartItems.add(cartItemEntity);
  }
}

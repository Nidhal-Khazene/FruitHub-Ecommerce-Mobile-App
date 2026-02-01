import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  CartEntity cartEntity = CartEntity(cartItems: []);
  void addCartItem(CartItemEntity cartItemEntity) {
    cartEntity.addCartItem(cartItemEntity);
    emit(CartAdded());
  }
}

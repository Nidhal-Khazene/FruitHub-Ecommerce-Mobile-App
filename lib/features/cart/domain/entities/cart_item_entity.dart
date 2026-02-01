import '../../../../core/entities/product_entity.dart';

class CartItemEntity {
  final ProductEntity productEntity;
  int count;

  CartItemEntity({required this.productEntity, this.count = 0});
  num calculateTotalPrice() {
    return productEntity.productPrice * count;
  }

  num calculateTotalWeight() {
    return 1 * count;
  }

  void increaseCount() {
    count++;
  }

  void decreaseCount() {
    count--;
  }
}

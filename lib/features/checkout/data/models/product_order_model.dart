import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';

class ProductOrderModel {
  final String productCode;
  final String productName;
  final num productPrice;
  final String imageUrl;
  final int quantity;

  ProductOrderModel({
    required this.productCode,
    required this.productName,
    required this.productPrice,
    required this.imageUrl,
    required this.quantity,
  });

  factory ProductOrderModel.fromEntity(CartItemEntity cartItemEntity) {
    return ProductOrderModel(
      productCode: cartItemEntity.productEntity.productCode,
      productName: cartItemEntity.productEntity.productName,
      productPrice: cartItemEntity.productEntity.productPrice,
      imageUrl: cartItemEntity.productEntity.urlImage!,
      quantity: cartItemEntity.quantity,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "productCode": productCode,
      "productName": productName,
      "productPrice": productPrice,
      "imageUrl": imageUrl,
      "quantity": quantity,
    };
  }
}

import 'package:ecommerce_app/features/checkout/data/models/payment_card_model.dart';
import 'package:ecommerce_app/features/checkout/data/models/product_order_model.dart';
import 'package:ecommerce_app/features/checkout/data/models/shipping_address_model.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';

class OrderModel {
  final double totalPrice;
  final String uID;
  final ShippingAddressModel shippingAddressModel;
  final List<OrderProductsModel> orderProducts;
  final PaymentCardModel paymentCardModel;
  final String paymentMethod;

  OrderModel({
    required this.paymentCardModel,
    required this.orderProducts,
    required this.paymentMethod,
    required this.totalPrice,
    required this.uID,
    required this.shippingAddressModel,
  });

  factory OrderModel.fromEntity(OrderInputEntity orderEntity) {
    return OrderModel(
      paymentCardModel: PaymentCardModel.fromEntity(
        orderEntity.paymentCardEntity,
      ),
      orderProducts: orderEntity.cartEntity.cartItemsEntities
          .map((e) => OrderProductsModel.fromEntity(e))
          .toList(),
      paymentMethod: orderEntity.payWithCash! ? "Cash" : "Online",
      totalPrice: orderEntity.cartEntity.calculateTotalPriceItems(),
      uID: orderEntity.uID,
      shippingAddressModel: ShippingAddressModel.fromEntity(
        orderEntity.shippingAddressEntity,
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "totalPrice": totalPrice,
      "uID": uID,
      "status": "pending",
      "date": DateTime.now().toString(),
      "shippingAddressModel": shippingAddressModel.toJson(),
      "orderProducts": orderProducts.map((e) => e.toJson()).toList(),
      "paymentCardModel": paymentCardModel.toJson(),
      "paymentMethod": paymentMethod,
    };
  }
}

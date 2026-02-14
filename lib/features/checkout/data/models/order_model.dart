import 'package:ecommerce_app/features/checkout/data/models/payment_card_model.dart';
import 'package:ecommerce_app/features/checkout/data/models/product_order_model.dart';
import 'package:ecommerce_app/features/checkout/data/models/shipping_address_model.dart';

class OrderModel {
  final double totalPrice;
  final String uID;
  final ShippingAddressModel shippingAddressModel;
  final List<ProductOrderModel> orderProducts;
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

  Map<String, dynamic> toJson() {
    return {
      "totalPrice": totalPrice,
      "uID": uID,
      "shippingAddressModel": shippingAddressModel.toJson(),
      "orderProducts": orderProducts.map((e) => e.toJson()).toList(),
      "paymentCardModel": paymentCardModel.toJson(),
      "paymentMethod": paymentMethod,
    };
  }
}

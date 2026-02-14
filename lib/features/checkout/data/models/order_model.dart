import 'package:ecommerce_app/features/checkout/data/models/product_order_model.dart';
import 'package:ecommerce_app/features/checkout/data/models/shipping_address_model.dart';

class OrderModel {
  final double totalPrice;
  final String uID;
  final ShippingAddressModel shippingAddressModel;
  final List<ProductOrderModel> orderProducts;
  final String paymentMethod;

  OrderModel({
    required this.orderProducts,
    required this.paymentMethod,
    required this.totalPrice,
    required this.uID,
    required this.shippingAddressModel,
  });
}

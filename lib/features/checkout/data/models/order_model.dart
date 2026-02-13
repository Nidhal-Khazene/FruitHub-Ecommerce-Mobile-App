import 'package:ecommerce_app/features/checkout/data/models/shipping_address_model.dart';

class OrderModel {
  final double totalPrice;
  final String uID;
  final ShippingAddressModel shippingAddressModel;

  OrderModel({
    required this.totalPrice,
    required this.uID,
    required this.shippingAddressModel,
  });
}

import 'package:ecommerce_app/core/entities/product_entity.dart';
import 'package:ecommerce_app/core/models/review_model.dart';

class ProductModel {
  final String productName;
  final String productCode;
  final String productDescription;
  final num productPrice;
  final bool isFeatured;
  final String? urlImage;
  final int expirationsMonth;
  final bool isOrganic;
  final int numberOfCalories;
  final num avrRating;
  final num ratingCount;
  final int unitAmount;
  final List<ReviewModel> reviews;
  final int sellingCount;

  ProductModel({
    required this.sellingCount,
    required this.reviews,
    this.avrRating = 0,
    this.ratingCount = 0,
    required this.expirationsMonth,
    this.isOrganic = false,
    required this.numberOfCalories,
    required this.unitAmount,
    required this.productName,
    required this.productCode,
    required this.productDescription,
    required this.productPrice,
    this.isFeatured = false,
    this.urlImage,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      sellingCount: json["sellingCount"],
      reviews: json["reviews"] != null
          ? List<ReviewModel>.from(
              json["reviews"].map((e) => ReviewModel.fromEntity(e)),
            )
          : [],
      expirationsMonth: json["expirationsMonth"],
      numberOfCalories: json["numberOfCalories"],
      unitAmount: json["unitAmount"],
      productName: json["productName"],
      productCode: json["productCode"],
      productDescription: json["productDescription"],
      productPrice: json["productPrice"],
    );
  }

  ProductEntity toEntity() {
    return ProductEntity(
      reviews: reviews.map((e) => e.toEntity()).toList(),
      expirationsMonth: expirationsMonth,
      isOrganic: isOrganic,
      numberOfCalories: numberOfCalories,
      unitAmount: unitAmount,
      productName: productName,
      productCode: productCode,
      productDescription: productDescription,
      productPrice: productPrice,
      urlImage: urlImage,
      isFeatured: isFeatured,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "sellingCount": sellingCount,
      "productName": productName,
      "productCode": productCode,
      "productDescription": productDescription,
      "productPrice": productPrice,
      "isFeatured": isFeatured,
      "urlImage": urlImage,
      "expirationsMonth": expirationsMonth,
      "isOrganic": isOrganic,
      "numberOfCalories": numberOfCalories,
      "unitAmount": unitAmount,
      "avrRating": avrRating,
      "ratingCount": ratingCount,
      "reviews": reviews.map((e) => e.toJson()).toList(),
    };
  }
}

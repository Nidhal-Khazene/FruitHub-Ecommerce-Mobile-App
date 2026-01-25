import 'package:ecommerce_app/core/entities/product_entity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    reviews: [],
    expirationsMonth: 2,
    isOrganic: true,
    numberOfCalories: 100,
    unitAmount: 100,
    productName: 'fruit',
    productCode: '0000',
    productDescription: 'good fruit',
    productPrice: 25,
    isFeatured: true,
  );
}

List<ProductEntity> getDummyProducts() {
  return [
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
  ];
}

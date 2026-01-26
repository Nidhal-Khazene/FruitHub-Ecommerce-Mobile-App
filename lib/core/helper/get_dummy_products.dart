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
    urlImage:
        "https://img.freepik.com/free-psd/fresh-red-apple-with-single-green-leaf-stem-sits-isolated-against-solid-black-background_84443-59661.jpg?t=st=1769351952~exp=1769355552~hmac=43ca26c3fea4f95e546413074f1b593bcc24e94bea2acb2914b271dd07e41a46",
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

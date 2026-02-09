class ShippingAddressEntity {
  final int? id;
  final String? fullName;
  final String? email;
  final String? address;
  final String? city;
  final int? apartmentNumber;

  ShippingAddressEntity({
    this.fullName,
    this.id,
    this.email,
    this.address,
    this.city,
    this.apartmentNumber,
  });
}

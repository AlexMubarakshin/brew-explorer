import 'package:meta/meta.dart';

class Brewery {
  final String breweryType;
  final String city;
  final String country;
  final int id;
  final String latitude;
  final String longitude;
  final String name;
  final String phone;
  final String postalCode;
  final String state;
  final String street;
  final String updatedAt;
  final String websiteUrl;

  final String fullAddress;

  Brewery({
    @required this.breweryType,
    @required this.city,
    @required this.country,
    @required this.id,
    this.latitude,
    this.longitude,
    @required this.name,
    @required this.phone,
    @required this.postalCode,
    @required this.state,
    @required this.street,
    @required this.updatedAt,
    @required this.websiteUrl,
    @required this.fullAddress,
  });

  factory Brewery.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    final String breweryType = map['brewery_type'] as String;
    final String city = map['city'] as String;
    final String country = map['country'] as String;
    final int id = map['id'] as int;
    final String latitude = map['latitude'] as String;
    final String longitude = map['longitude'] as String;
    final String name = map['name'] as String;
    final String phone = map['phone'] as String;
    final String postalCode = map['postal_code'] as String;
    final String state = map['state'] as String;
    final String street = map['street'] as String;
    final String updatedAt = map['updated_at'] as String;
    final String websiteUrl = map['website_url'] as String;
    final String fullAddress =
        "${country ?? 'Unknown country'}, ${state ?? 'Unknown state'}, ${city ?? 'Unknown city'}, ${street ?? 'Unknown street'}, ${postalCode ?? 'Unknown postal code'}";

    return Brewery(
      breweryType: breweryType,
      city: city,
      country: country,
      id: id,
      latitude: latitude,
      longitude: longitude,
      name: name,
      phone: phone,
      postalCode: postalCode,
      state: state,
      street: street,
      updatedAt: updatedAt,
      websiteUrl: websiteUrl,
      fullAddress: fullAddress,
    );
  }
  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Brewery &&
        o.breweryType == breweryType &&
        o.city == city &&
        o.country == country &&
        o.id == id &&
        o.latitude == latitude &&
        o.longitude == longitude &&
        o.name == name &&
        o.phone == phone &&
        o.postalCode == postalCode &&
        o.state == state &&
        o.street == street &&
        o.updatedAt == updatedAt &&
        o.websiteUrl == websiteUrl;
  }

  @override
  int get hashCode {
    return breweryType.hashCode ^
        city.hashCode ^
        country.hashCode ^
        id.hashCode ^
        latitude.hashCode ^
        longitude.hashCode ^
        name.hashCode ^
        phone.hashCode ^
        postalCode.hashCode ^
        state.hashCode ^
        street.hashCode ^
        updatedAt.hashCode ^
        websiteUrl.hashCode;
  }
}

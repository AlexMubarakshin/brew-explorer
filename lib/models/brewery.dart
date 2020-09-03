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
  });

  factory Brewery.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Brewery(
      breweryType: map['breweryType'] as String,
      city: map['city']  as String,
      country: map['country']  as String,
      id: map['id']  as int,
      latitude: map['latitude']  as String,
      longitude: map['longitude']  as String,
      name: map['name']  as String,
      phone: map['phone']  as String,
      postalCode: map['postalCode']  as String,
      state: map['state']  as String,
      street: map['street']  as String,
      updatedAt: map['updatedAt']  as String,
      websiteUrl: map['websiteUrl']  as String,
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

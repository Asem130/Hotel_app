import 'b_max_los_data.dart';

class SearchLocation {
  int? rtl;
  double? longitude;
  String? lc;
  String? country;
  String? cc1;
  String? cityName;
  int? hotels;
  String? destId;
  BMaxLosData? bMaxLosData;
  String? timezone;
  int? nrHotels;
  dynamic cityUfi;
  double? latitude;
  String? destType;
  String? type;
  String? label;
  String? name;
  String? region;
  String? imageUrl;
  String? roundtrip;

  SearchLocation({
    this.rtl,
    this.longitude,
    this.lc,
    this.country,
    this.cc1,
    this.cityName,
    this.hotels,
    this.destId,
    this.bMaxLosData,
    this.timezone,
    this.nrHotels,
    this.cityUfi,
    this.latitude,
    this.destType,
    this.type,
    this.label,
    this.name,
    this.region,
    this.imageUrl,
    this.roundtrip,
  });

  @override
  String toString() {
    return 'SearchLocation(rtl: $rtl, longitude: $longitude, lc: $lc, country: $country, cc1: $cc1, cityName: $cityName, hotels: $hotels, destId: $destId, bMaxLosData: $bMaxLosData, timezone: $timezone, nrHotels: $nrHotels, cityUfi: $cityUfi, latitude: $latitude, destType: $destType, type: $type, label: $label, name: $name, region: $region, imageUrl: $imageUrl, roundtrip: $roundtrip)';
  }

  factory SearchLocation.fromJson(json) {
    return SearchLocation(
      rtl: json['rtl'] as int?,
      longitude: (json['longitude'] as num?)?.toDouble(),
      lc: json['lc'] as String?,
      country: json['country'] as String?,
      cc1: json['cc1'] as String?,
      cityName: json['city_name'] as String?,
      hotels: json['hotels'] as int?,
      destId: json['dest_id'] as String?,
      bMaxLosData: json['b_max_los_data'] == null
          ? null
          : BMaxLosData.fromJson(
              json['b_max_los_data'] as Map<String, dynamic>),
      timezone: json['timezone'] as String?,
      nrHotels: json['nr_hotels'] as int?,
      cityUfi: json['city_ufi'] as dynamic,
      latitude: (json['latitude'] as num?)?.toDouble(),
      destType: json['dest_type'] as String?,
      type: json['type'] as String?,
      label: json['label'] as String?,
      name: json['name'] as String?,
      region: json['region'] as String?,
      imageUrl: json['image_url'] as String?,
      roundtrip: json['roundtrip'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'rtl': rtl,
        'longitude': longitude,
        'lc': lc,
        'country': country,
        'cc1': cc1,
        'city_name': cityName,
        'hotels': hotels,
        'dest_id': destId,
        'b_max_los_data': bMaxLosData?.toJson(),
        'timezone': timezone,
        'nr_hotels': nrHotels,
        'city_ufi': cityUfi,
        'latitude': latitude,
        'dest_type': destType,
        'type': type,
        'label': label,
        'name': name,
        'region': region,
        'image_url': imageUrl,
        'roundtrip': roundtrip,
      };
}

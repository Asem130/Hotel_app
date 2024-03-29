class PropertyAnnotation {
  double? longitude;
  double? latitude;

  PropertyAnnotation({this.longitude, this.latitude});

  @override
  String toString() {
    return 'PropertyAnnotation(longitude: $longitude, latitude: $latitude)';
  }

  factory PropertyAnnotation.fromJson(Map<String, dynamic> json) {
    return PropertyAnnotation(
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        'longitude': longitude,
        'latitude': latitude,
      };
}

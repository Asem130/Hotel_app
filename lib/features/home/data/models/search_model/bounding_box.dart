class BoundingBox {
  double? swLat;
  double? neLat;
  double? swLon;
  double? neLon;

  BoundingBox({this.swLat, this.neLat, this.swLon, this.neLon});

  @override
  String toString() {
    return 'BoundingBox(swLat: $swLat, neLat: $neLat, swLon: $swLon, neLon: $neLon)';
  }

  factory BoundingBox.fromJson(Map<String, dynamic> json) => BoundingBox(
        swLat: (json['swLat'] as num?)?.toDouble(),
        neLat: (json['neLat'] as num?)?.toDouble(),
        swLon: (json['swLon'] as num?)?.toDouble(),
        neLon: (json['neLon'] as num?)?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'swLat': swLat,
        'neLat': neLat,
        'swLon': swLon,
        'neLon': neLon,
      };
}

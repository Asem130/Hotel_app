class BMaxLosData {
  int? maxAllowedLos;
  String? experiment;
  int? hasExtendedLos;
  int? defaultLos;
  int? extendedLos;
  int? isFullon;

  BMaxLosData({
    this.maxAllowedLos,
    this.experiment,
    this.hasExtendedLos,
    this.defaultLos,
    this.extendedLos,
    this.isFullon,
  });

  @override
  String toString() {
    return 'BMaxLosData(maxAllowedLos: $maxAllowedLos, experiment: $experiment, hasExtendedLos: $hasExtendedLos, defaultLos: $defaultLos, extendedLos: $extendedLos, isFullon: $isFullon)';
  }

  factory BMaxLosData.fromJson(json) => BMaxLosData(
        maxAllowedLos: json['max_allowed_los'] as int?,
        experiment: json['experiment'] as String?,
        hasExtendedLos: json['has_extended_los'] as int?,
        defaultLos: json['default_los'] as int?,
        extendedLos: json['extended_los'] as int?,
        isFullon: json['is_fullon'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'max_allowed_los': maxAllowedLos,
        'experiment': experiment,
        'has_extended_los': hasExtendedLos,
        'default_los': defaultLos,
        'extended_los': extendedLos,
        'is_fullon': isFullon,
      };
}

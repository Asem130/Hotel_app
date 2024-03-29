class StrikethroughPrice {
  double? value;
  String? currency;

  StrikethroughPrice({this.value, this.currency});

  @override
  String toString() {
    return 'StrikethroughPrice(value: $value, currency: $currency)';
  }

  factory StrikethroughPrice.fromJson(Map<String, dynamic> json) {
    return StrikethroughPrice(
      value: (json['value'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'value': value,
        'currency': currency,
      };
}

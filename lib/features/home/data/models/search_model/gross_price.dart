class GrossPrice {
  double? value;
  String? currency;

  GrossPrice({this.value, this.currency});

  @override
  String toString() => 'GrossPrice(value: $value, currency: $currency)';

  factory GrossPrice.fromJson(Map<String, dynamic> json) => GrossPrice(
        value: (json['value'] as num?)?.toDouble(),
        currency: json['currency'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'value': value,
        'currency': currency,
      };
}

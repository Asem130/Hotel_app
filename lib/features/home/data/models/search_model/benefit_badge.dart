class BenefitBadge {
  String? variant;
  String? explanation;
  String? text;
  String? identifier;

  BenefitBadge({
    this.variant,
    this.explanation,
    this.text,
    this.identifier,
  });

  @override
  String toString() {
    return 'BenefitBadge(variant: $variant, explanation: $explanation, text: $text, identifier: $identifier)';
  }

  factory BenefitBadge.fromJson(Map<String, dynamic> json) => BenefitBadge(
        variant: json['variant'] as String?,
        explanation: json['explanation'] as String?,
        text: json['text'] as String?,
        identifier: json['identifier'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'variant': variant,
        'explanation': explanation,
        'text': text,
        'identifier': identifier,
      };
}

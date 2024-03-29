import 'benefit_badge.dart';
import 'gross_price.dart';
import 'strikethrough_price.dart';

class PriceBreakdown {
  GrossPrice? grossPrice;
  List<BenefitBadge>? benefitBadges;
  StrikethroughPrice? strikethroughPrice;
  List<dynamic>? taxExceptions;

  PriceBreakdown({
    this.grossPrice,
    this.benefitBadges,
    this.strikethroughPrice,
    this.taxExceptions,
  });

  @override
  String toString() {
    return 'PriceBreakdown(grossPrice: $grossPrice, benefitBadges: $benefitBadges, strikethroughPrice: $strikethroughPrice, taxExceptions: $taxExceptions)';
  }

  factory PriceBreakdown.fromJson(Map<String, dynamic> json) {
    return PriceBreakdown(
      grossPrice: json['grossPrice'] == null
          ? null
          : GrossPrice.fromJson(json['grossPrice'] as Map<String, dynamic>),
      benefitBadges: (json['benefitBadges'] as List<dynamic>?)
          ?.map((e) => BenefitBadge.fromJson(e as Map<String, dynamic>))
          .toList(),
      strikethroughPrice: json['strikethroughPrice'] == null
          ? null
          : StrikethroughPrice.fromJson(
              json['strikethroughPrice'] as Map<String, dynamic>),
      taxExceptions: json['taxExceptions'] as List<dynamic>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'grossPrice': grossPrice?.toJson(),
        'benefitBadges': benefitBadges?.map((e) => e.toJson()).toList(),
        'strikethroughPrice': strikethroughPrice?.toJson(),
        'taxExceptions': taxExceptions,
      };
}

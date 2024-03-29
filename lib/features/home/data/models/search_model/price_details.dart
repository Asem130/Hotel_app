class PriceDetails {
  dynamic info;
  dynamic strikethrough;
  dynamic gross;
  dynamic taxInfo;

  PriceDetails({this.info, this.strikethrough, this.gross, this.taxInfo});

  @override
  String toString() {
    return 'PriceDetails(info: $info, strikethrough: $strikethrough, gross: $gross, taxInfo: $taxInfo)';
  }

  factory PriceDetails.fromJson(Map<String, dynamic> json) => PriceDetails(
        info: json['info'] as dynamic,
        strikethrough: json['strikethrough'] as dynamic,
        gross: json['gross'] as dynamic,
        taxInfo: json['taxInfo'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'info': info,
        'strikethrough': strikethrough,
        'gross': gross,
        'taxInfo': taxInfo,
      };
}

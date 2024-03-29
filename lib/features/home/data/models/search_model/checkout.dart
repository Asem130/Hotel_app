class Checkout {
  String? fromTime;
  String? untilTime;

  Checkout({this.fromTime, this.untilTime});

  @override
  String toString() {
    return 'Checkout(fromTime: $fromTime, untilTime: $untilTime)';
  }

  factory Checkout.fromJson(Map<String, dynamic> json) => Checkout(
        fromTime: json['fromTime'] as String?,
        untilTime: json['untilTime'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'fromTime': fromTime,
        'untilTime': untilTime,
      };
}

class Checkin {
  String? fromTime;
  String? untilTime;

  Checkin({this.fromTime, this.untilTime});

  @override
  String toString() => 'Checkin(fromTime: $fromTime, untilTime: $untilTime)';

  factory Checkin.fromJson(Map<String, dynamic> json) => Checkin(
        fromTime: json['fromTime'] as String?,
        untilTime: json['untilTime'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'fromTime': fromTime,
        'untilTime': untilTime,
      };
}

import 'map_page_fields.dart';
import 'result.dart';

class SearchModel {
  int? count;
  MapPageFields? mapPageFields;
  List<Result>? results;

  SearchModel({this.count, this.mapPageFields, this.results});

  @override
  String toString() {
    return 'SearchModel(count: $count, mapPageFields: $mapPageFields, results: $results)';
  }

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
        count: json['count'] as int?,
        mapPageFields: json['mapPageFields'] == null
            ? null
            : MapPageFields.fromJson(
                json['mapPageFields'] as Map<String, dynamic>),
        results: (json['results'] as List<dynamic>?)
            ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'count': count,
        'mapPageFields': mapPageFields?.toJson(),
        'results': results?.map((e) => e.toJson()).toList(),
      };
}

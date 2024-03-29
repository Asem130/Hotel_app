import 'bounding_box.dart';
import 'property_annotation.dart';

class MapPageFields {
  BoundingBox? boundingBox;
  List<PropertyAnnotation>? propertyAnnotations;

  MapPageFields({this.boundingBox, this.propertyAnnotations});

  @override
  String toString() {
    return 'MapPageFields(boundingBox: $boundingBox, propertyAnnotations: $propertyAnnotations)';
  }

  factory MapPageFields.fromJson(Map<String, dynamic> json) => MapPageFields(
        boundingBox: json['boundingBox'] == null
            ? null
            : BoundingBox.fromJson(json['boundingBox'] as Map<String, dynamic>),
        propertyAnnotations: (json['propertyAnnotations'] as List<dynamic>?)
            ?.map((e) => PropertyAnnotation.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'boundingBox': boundingBox?.toJson(),
        'propertyAnnotations':
            propertyAnnotations?.map((e) => e.toJson()).toList(),
      };
}

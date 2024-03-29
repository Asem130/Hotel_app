import 'checkin.dart';
import 'checkout.dart';
import 'price_breakdown.dart';
import 'price_details.dart';

class Result {
  int? id;
  String? name;
  int? mainPhotoId;
  String? photoMainUrl;
  List<String>? photoUrls;
  int? position;
  int? rankingPosition;
  String? countryCode;
  double? latitude;
  double? longitude;
  PriceBreakdown? priceBreakdown;
  String? currency;
  Checkin? checkin;
  Checkout? checkout;
  String? checkoutDate;
  String? checkinDate;
  double? reviewScore;
  String? reviewScoreWord;
  int? reviewCount;
  int? qualityClass;
  bool? isFirstPage;
  int? accuratePropertyClass;
  int? propertyClass;
  int? ufi;
  String? wishlistName;
  int? optOutFromGalleryChanges;
  dynamic wishlistToggle;
  dynamic propertyType;
  List<dynamic>? proposedAccommodation;
  PriceDetails? priceDetails;
  List<dynamic>? additionalLabels;

  Result({
    this.id,
    this.name,
    this.mainPhotoId,
    this.photoMainUrl,
    this.photoUrls,
    this.position,
    this.rankingPosition,
    this.countryCode,
    this.latitude,
    this.longitude,
    this.priceBreakdown,
    this.currency,
    this.checkin,
    this.checkout,
    this.checkoutDate,
    this.checkinDate,
    this.reviewScore,
    this.reviewScoreWord,
    this.reviewCount,
    this.qualityClass,
    this.isFirstPage,
    this.accuratePropertyClass,
    this.propertyClass,
    this.ufi,
    this.wishlistName,
    this.optOutFromGalleryChanges,
    this.wishlistToggle,
    this.propertyType,
    this.proposedAccommodation,
    this.priceDetails,
    this.additionalLabels,
  });

  @override
  String toString() {
    return 'Result(id: $id, name: $name, mainPhotoId: $mainPhotoId, photoMainUrl: $photoMainUrl, photoUrls: $photoUrls, position: $position, rankingPosition: $rankingPosition, countryCode: $countryCode, latitude: $latitude, longitude: $longitude, priceBreakdown: $priceBreakdown, currency: $currency, checkin: $checkin, checkout: $checkout, checkoutDate: $checkoutDate, checkinDate: $checkinDate, reviewScore: $reviewScore, reviewScoreWord: $reviewScoreWord, reviewCount: $reviewCount, qualityClass: $qualityClass, isFirstPage: $isFirstPage, accuratePropertyClass: $accuratePropertyClass, propertyClass: $propertyClass, ufi: $ufi, wishlistName: $wishlistName, optOutFromGalleryChanges: $optOutFromGalleryChanges, wishlistToggle: $wishlistToggle, propertyType: $propertyType, proposedAccommodation: $proposedAccommodation, priceDetails: $priceDetails, additionalLabels: $additionalLabels)';
  }

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json['id'] as int?,
        name: json['name'] as String?,
        mainPhotoId: json['mainPhotoId'] as int?,
        photoMainUrl: json['photoMainUrl'] as String?,
        photoUrls: json['photoUrls'] as List<String>?,
        position: json['position'] as int?,
        rankingPosition: json['rankingPosition'] as int?,
        countryCode: json['countryCode'] as String?,
        latitude: (json['latitude'] as num?)?.toDouble(),
        longitude: (json['longitude'] as num?)?.toDouble(),
        priceBreakdown: json['priceBreakdown'] == null
            ? null
            : PriceBreakdown.fromJson(
                json['priceBreakdown'] as Map<String, dynamic>),
        currency: json['currency'] as String?,
        checkin: json['checkin'] == null
            ? null
            : Checkin.fromJson(json['checkin'] as Map<String, dynamic>),
        checkout: json['checkout'] == null
            ? null
            : Checkout.fromJson(json['checkout'] as Map<String, dynamic>),
        checkoutDate: json['checkoutDate'] as String?,
        checkinDate: json['checkinDate'] as String?,
        reviewScore: (json['reviewScore'] as num?)?.toDouble(),
        reviewScoreWord: json['reviewScoreWord'] as String?,
        reviewCount: json['reviewCount'] as int?,
        qualityClass: json['qualityClass'] as int?,
        isFirstPage: json['isFirstPage'] as bool?,
        accuratePropertyClass: json['accuratePropertyClass'] as int?,
        propertyClass: json['propertyClass'] as int?,
        ufi: json['ufi'] as int?,
        wishlistName: json['wishlistName'] as String?,
        optOutFromGalleryChanges: json['optOutFromGalleryChanges'] as int?,
        wishlistToggle: json['wishlistToggle'] as dynamic,
        propertyType: json['propertyType'] as dynamic,
        proposedAccommodation: json['proposedAccommodation'] as List<dynamic>?,
        priceDetails: json['priceDetails'] == null
            ? null
            : PriceDetails.fromJson(
                json['priceDetails'] as Map<String, dynamic>),
        additionalLabels: json['additionalLabels'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'mainPhotoId': mainPhotoId,
        'photoMainUrl': photoMainUrl,
        'photoUrls': photoUrls,
        'position': position,
        'rankingPosition': rankingPosition,
        'countryCode': countryCode,
        'latitude': latitude,
        'longitude': longitude,
        'priceBreakdown': priceBreakdown?.toJson(),
        'currency': currency,
        'checkin': checkin?.toJson(),
        'checkout': checkout?.toJson(),
        'checkoutDate': checkoutDate,
        'checkinDate': checkinDate,
        'reviewScore': reviewScore,
        'reviewScoreWord': reviewScoreWord,
        'reviewCount': reviewCount,
        'qualityClass': qualityClass,
        'isFirstPage': isFirstPage,
        'accuratePropertyClass': accuratePropertyClass,
        'propertyClass': propertyClass,
        'ufi': ufi,
        'wishlistName': wishlistName,
        'optOutFromGalleryChanges': optOutFromGalleryChanges,
        'wishlistToggle': wishlistToggle,
        'propertyType': propertyType,
        'proposedAccommodation': proposedAccommodation,
        'priceDetails': priceDetails?.toJson(),
        'additionalLabels': additionalLabels,
      };
}

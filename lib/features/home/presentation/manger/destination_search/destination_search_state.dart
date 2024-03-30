import 'package:hotels/features/home/data/models/search_location/search_location.dart';

abstract class DestinationSearchState {}

final class DestinationSearchInitial extends DestinationSearchState {}

final class DestinationSearchLoading extends DestinationSearchState {}

final class DestinationSearchSuccsess extends DestinationSearchState {
  final List<SearchLocation> searchLocation;

  DestinationSearchSuccsess({required this.searchLocation});
}

final class DestinationSearchFailre extends DestinationSearchState {
  final String errMessage;

  DestinationSearchFailre({required this.errMessage});
}

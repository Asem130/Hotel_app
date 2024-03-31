import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels/core/utils/api_services.dart';
import 'package:hotels/features/home/data/models/search_location/search_location.dart';
import 'package:hotels/features/home/presentation/manger/destination_search/destination_search_state.dart';

class DestinationSearchCubit extends Cubit<DestinationSearchState> {
  DestinationSearchCubit() : super(DestinationSearchInitial());
  List<SearchLocation> searchLocation = [];
  void getDestination({required String cityName}) async {
    emit(DestinationSearchLoading());
    
    try {
      searchLocation = await ApiServicese().getSearch(cityName: cityName);
      emit(DestinationSearchSuccsess(searchLocation: searchLocation));
    } on Exception catch (e) {
      emit(
        DestinationSearchFailre(
          errMessage: e.toString(),
        ),
      );
      print('errrrrrror');
    }
  }
}

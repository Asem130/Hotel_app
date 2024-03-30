import 'dart:convert';

import 'package:hotels/features/home/data/models/search_location/search_location.dart';
import 'package:http/http.dart' as http;

class ApiServicese {
  Future<List<SearchLocation>> getSearch({required String cityName}) async {
    http.Response response = await http.get(
        Uri.parse(
          'https://booking-com.p.rapidapi.com/v1/hotels/locations?name=$cityName&locale=en-gb',
        ),
        headers: {
          'X-RapidAPI-Key':
              '8dd2a23b3dmsh3cfab3fd7d3cbd0p136c76jsnf6f9a4e19cb0',
          'X-RapidAPI-Host': 'booking-com.p.rapidapi.com'
        });
    var data = jsonDecode(response.body);
    List<SearchLocation> searchModel = [];
    for (var model in data) {
      searchModel.add(SearchLocation.fromJson(model));
    }

    return searchModel;
  }
}

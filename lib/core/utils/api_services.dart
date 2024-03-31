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
              '9fa9c6017fmshdba14d5a0a85076p19db77jsn03d5992a1428',
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

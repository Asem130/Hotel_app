import 'dart:convert';

import 'package:hotels/features/home/data/models/search_model/search_model.dart';
import 'package:http/http.dart' as http;

class ApiServicese {
  Future<List<SearchModel>> getSearch() async {
    http.Response response = await http.get(
        Uri.parse(
          'https://booking-com.p.rapidapi.com/v2/hotels/search?locale=en-gb&filter_by_currency=AED&checkin_date=2024-09-14&dest_type=city&dest_id=-553173&adults_number=2&checkout_date=2024-09-15&order_by=popularity&room_number=1&units=metric&children_number=2&children_ages=5%2C0&categories_filter_ids=class%3A%3A2%2Cclass%3A%3A4%2Cfree_cancellation%3A%3A1&include_adjacency=true&page_number=0',
        ),
        headers: {
          'X-RapidAPI-Key':
              '8dd2a23b3dmsh3cfab3fd7d3cbd0p136c76jsnf6f9a4e19cb0',
          'X-RapidAPI-Host': 'booking-com.p.rapidapi.com'
        });
    Map<String, dynamic> data = jsonDecode(response.body);
    List<SearchModel> searchModel = [];
    for (var model in data['results']) {
      searchModel.add(SearchModel.fromJson(model));
    }
    return searchModel;
  }
}

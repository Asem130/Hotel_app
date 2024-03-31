import 'package:flutter/material.dart';
import 'package:hotels/features/home/data/models/search_location/search_location.dart';

class DestinationSearchImageItem extends StatelessWidget {
  const DestinationSearchImageItem({
    super.key,
    required this.searchLocation,
  });
  final SearchLocation searchLocation;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(8),
      child: Card(
        margin: EdgeInsets.zero,
        child: searchLocation.imageUrl != null
            ? Image.network(
                height: 60,
                width: 60,
                searchLocation.imageUrl!,
                fit: BoxFit.cover,
              )
            : Image.asset(
                height: 60,
                width: 60,
                'assets/images/5.jpg',
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}

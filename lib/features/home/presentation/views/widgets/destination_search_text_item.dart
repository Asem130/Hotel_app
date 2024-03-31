import 'package:flutter/material.dart';
import 'package:hotels/core/utils/styles.dart';
import 'package:hotels/features/home/data/models/search_location/search_location.dart';

class DestinationSearchTextItem extends StatelessWidget {
  const DestinationSearchTextItem({
    super.key,
    required this.searchLocation,
  });
  final SearchLocation searchLocation;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          overflow: TextOverflow.ellipsis,
          searchLocation.cityName!,
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        Text(
          searchLocation.cityName != null ? searchLocation.label! : '....',
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle16.copyWith(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

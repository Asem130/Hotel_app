import 'package:flutter/material.dart';
import 'package:hotels/features/home/data/models/search_location/search_location.dart';
import 'package:hotels/features/home/presentation/views/widgets/destination_search_image_item.dart';
import 'package:hotels/features/home/presentation/views/widgets/destination_search_text_item.dart';

class DestinationItem extends StatelessWidget {
  const DestinationItem({super.key, required this.searchLocation});
  final SearchLocation searchLocation;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DestinationSearchImageItem(searchLocation: searchLocation),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: DestinationSearchTextItem(
            searchLocation: searchLocation,
          ),
        )
      ],
    );
  }
}

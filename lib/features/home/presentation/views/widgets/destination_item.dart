import 'package:flutter/material.dart';
import 'package:hotels/core/utils/styles.dart';
import 'package:hotels/features/home/data/models/search_location/search_location.dart';

class DestinationItem extends StatelessWidget {
  const DestinationItem({super.key, required this.searchLocation});
  final SearchLocation searchLocation;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
                image:  NetworkImage(searchLocation.imageUrl!),
                fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              searchLocation.cityName!,
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              searchLocation.label!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle16.copyWith(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

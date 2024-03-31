import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/constants.dart';
import 'package:hotels/core/utils/app_router.dart';

import 'package:hotels/features/home/data/models/search_location/search_location.dart';
import 'package:hotels/features/home/presentation/views/widgets/destination_item.dart';

class DestinationListView extends StatelessWidget {
  const DestinationListView({super.key, required this.searchLocation});
  final List<SearchLocation> searchLocation;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {
            context.go('${AppRouter.kHome}/${searchLocation[index].cityName}');
          },
          splashColor: kPrimaryColor.withOpacity(0.3),
          child: DestinationItem(
            searchLocation: searchLocation[index],
          ),
        ),
      ),
      itemCount: searchLocation.length,
    );
  }
}

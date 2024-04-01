import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/constants.dart';
import 'package:hotels/core/utils/app_router.dart';
import 'package:hotels/core/widgets/custom_text_button.dart';
import 'package:hotels/features/home/presentation/views/widgets/search_item.dart';
import 'package:hotels/features/home/presentation/views/widgets/select_rooms_and_guests_bottom_sheet.dart';

class SearchFeilds extends StatelessWidget {
  const SearchFeilds({
    super.key,
    this.cityName = 'london',
    this.date = '025/5',
    this.children = '5 cas',
  });
  final String cityName;
  final String date;
  final String children;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SearchItem(
          icon: Icons.search,
          text: cityName,
          onTap: () {
            GoRouter.of(context).push(AppRouter.kDestination);
          },
        ),
        const SizedBox(
          height: 5,
        ),
        SearchItem(
          icon: Icons.search,
          text: date,
          onTap: () async {},
        ),
        const SizedBox(
          height: 5,
        ),
        SearchItem(
          icon: Icons.search,
          text: children,
          onTap: () {
            showModalBottomSheet(
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
              ),
              context: context,
              builder: (context) => const SelectRoomsAndGuestsBottomSheet(),
            );
          },
        ),
        const SizedBox(
          height: 5,
        ),
        CustomTextButton(
          radius: 16,
          color: kPrimaryColor,
          width: MediaQuery.of(context).size.width,
          text: 'Search',
        ),
      ],
    );
  }
}

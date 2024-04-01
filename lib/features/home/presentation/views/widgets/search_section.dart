import 'package:flutter/material.dart';
import 'package:hotels/features/home/presentation/views/widgets/floating_continer.dart';
import 'package:hotels/features/home/presentation/views/widgets/search_feilds.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key, required this.cityName});
  final String cityName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: (MediaQuery.of(context).size.height / 10) / 2),
      child: FloatingContiner(
        widget: Padding(
          padding: const EdgeInsets.all(16),
          child: SearchFeilds(
            cityName: cityName,
          ),
        ),
      ),
    );
  }
}

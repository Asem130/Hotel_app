import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels/constants.dart';
import 'package:hotels/core/widgets/custom_text_field.dart';
import 'package:hotels/features/home/data/models/search_location/search_location.dart';
import 'package:hotels/features/home/presentation/manger/destination_search/destination_search_cubit.dart';
import 'package:hotels/features/home/presentation/manger/destination_search/destination_search_state.dart';
import 'package:hotels/features/home/presentation/views/widgets/destination_list_view.dart';

class DestinationView extends StatelessWidget {
  const DestinationView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DestinationBody(),
      ),
    );
  }
}

class DestinationBody extends StatelessWidget {
  DestinationBody({
    super.key,
  });
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    List<SearchLocation> searchLocation = [];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            CustomTextField(
              controller: controller,
              textColor: Colors.black,
              color: kPrimaryColr,
              prefixIcon: IconButton(
                  onPressed: () {
                    controller.clear();
                  },
                  icon: const Icon(Icons.clear_sharp)),
              hintText: 'Enter destination',
              onChanged: (value) {
                searchLocation =
                    BlocProvider.of<DestinationSearchCubit>(context)
                        .searchLocation;
                BlocProvider.of<DestinationSearchCubit>(context)
                    .getDestination(cityName: value);
              },
              suffixIcon: IconButton(
                  onPressed: () {
                    controller.clear();
                    
                  },
                  icon: const Icon(Icons.clear_sharp)),
            ),
            BlocBuilder<DestinationSearchCubit, DestinationSearchState>(
              builder: (context, state) {
                if (state is DestinationSearchLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is DestinationSearchSuccsess) {
                  return Expanded(
                    child: DestinationListView(
                      searchLocation: searchLocation,
                    ),
                  );
                } else if (state is DestinationSearchFailre) {
                  return const Text('Some Thing went wrong');
                } else {
                  return const Center(child: Text('No result'));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

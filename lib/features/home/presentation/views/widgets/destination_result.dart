import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels/features/home/presentation/manger/destination_search/destination_search_cubit.dart';
import 'package:hotels/features/home/presentation/manger/destination_search/destination_search_state.dart';
import 'package:hotels/features/home/presentation/views/widgets/destination_list_view.dart';

class DestinationResult extends StatelessWidget {
  const DestinationResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DestinationSearchCubit, DestinationSearchState>(
        builder: (context, state) {
      if (state is DestinationSearchLoading) {
        return const Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          ),
        );
      } else if (state is DestinationSearchSuccsess) {
        return Expanded(
          child: DestinationListView(
            searchLocation: state.searchLocation,
          ),
        );
      } else if (state is DestinationSearchFailre) {
        return const Text('Error caused');
      } else {
        return const SizedBox.shrink();
      }
    });
  }
}

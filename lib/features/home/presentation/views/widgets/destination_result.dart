import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels/features/home/presentation/manger/destination_search/destination_search_cubit.dart';
import 'package:hotels/features/home/presentation/manger/destination_search/destination_search_state.dart';
import 'package:hotels/features/home/presentation/views/widgets/destination_list_view.dart';

class DestinationResult extends StatelessWidget {
  const DestinationResult({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DestinationSearchCubit, DestinationSearchState>(
        listener: (context, state) {
      if (state is DestinationSearchFailre) {
        print('failire');
      }
    }, builder: (context, state) {
      if (state is DestinationSearchLoading) {
        return const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
          ],
        );
      } else if (state is DestinationSearchSuccsess) {
        return DestinationListView(
          searchLocation: state.searchLocation,
        );
      } else {
        return const SizedBox.shrink();
      }
    });
  }
}

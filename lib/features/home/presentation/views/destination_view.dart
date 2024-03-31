import 'package:flutter/material.dart';
import 'package:hotels/features/home/presentation/views/widgets/destination_view_body.dart';

class DestinationView extends StatelessWidget {
  const DestinationView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: DestinationBody(),
      ),
    );
  }
}

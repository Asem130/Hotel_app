import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hotels/features/home/presentation/views/widgets/destination_result.dart';
import 'package:hotels/features/home/presentation/views/widgets/destination_text_form_feild.dart';

class DestinationBody extends StatelessWidget {
  const DestinationBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: const Column(
          children: [
            DestinationTextFormField(),
            Expanded(child: DestinationResult()),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hotels/core/utils/styles.dart';
import 'package:hotels/features/home/presentation/views/widgets/custom_counter.dart';

class SelectRoomsAndGuestsCounter extends StatelessWidget {
  const SelectRoomsAndGuestsCounter({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Styles.textStyle18,
        ),
        const Spacer(),
        CustomCounter(
            borderColor: Colors.black,
            borderWidth: 1,
            borderRadius: 5,
            backgroundColor: Colors.white,
            textColor: const Color.fromARGB(255, 0, 0, 0),
            textSize: 15,
            count: 0,
            step: 1,
            minCount: 0,
            maxCount: 30,
            incrementIcon: const Icon(
              Icons.add,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            decrementIcon: const Icon(
              Icons.remove,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            onCountChange: (value) {}),
      ],
    );
  }
}

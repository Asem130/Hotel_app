import 'package:flutter/material.dart';
import 'package:hotels/constants.dart';
import 'package:hotels/core/utils/styles.dart';
import 'package:hotels/core/widgets/custom_text_button.dart';
import 'package:hotels/features/home/presentation/views/widgets/children_item.dart';
import 'package:hotels/features/home/presentation/views/widgets/select_rooms_and_guests_counter.dart';

class SelectRoomsAndGuestsBottomSheetBody extends StatelessWidget {
  const SelectRoomsAndGuestsBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          top: 12,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 145, 143, 143),
                borderRadius: BorderRadius.circular(12)),
            height: 5,
            width: 80,
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Select rooms and guests',
                style: Styles.textStyle22,
              ),
              const SizedBox(
                height: 30,
              ),
              const SelectRoomsAndGuestsCounter(text: 'Rooms'),
              const SizedBox(
                height: 20,
              ),
              const SelectRoomsAndGuestsCounter(text: 'Adults'),
              const SizedBox(
                height: 20,
              ),
              const ChildrenBotton(),
              const SizedBox(height: 60),
              CustomTextButton(
                  text: 'Apply',
                  color: kPrimaryColor,
                  width: MediaQuery.of(context).size.width,
                  radius: 16)
            ],
          ),
        ]),
      ),
    );
  }
}

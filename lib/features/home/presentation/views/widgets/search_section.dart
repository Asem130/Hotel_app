import 'package:customizable_counter/customizable_counter.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/constants.dart';
import 'package:hotels/core/utils/app_router.dart';
import 'package:hotels/core/utils/styles.dart';
import 'package:hotels/core/widgets/custom_text_button.dart';
import 'package:hotels/features/home/presentation/views/widgets/custom_counter.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key, required this.cityName});
  final String cityName;
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    final firstTime = DateTime(now.year, now.month, now.day);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: (height / 2.5) / 2),
      child: Container(
        width: width,
        height: height / 2.5,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: /*TextField(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kDestination);
            },
            decoration: const InputDecoration(
              hintText: 's',
              enabledBorder: OutlineInputBorder(),
            ),
          ),*/

              Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Item(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kDestination);
                },
                child: SearchChild(
                  cityName: cityName,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Item(
                onTap: () async {},
                child: const PickDateChild(),
              ),
              const SizedBox(
                height: 15,
              ),
              Item(
                onTap: () {
                  showModalBottomSheet(
                  backgroundColor: Color.fromARGB(255, 102, 25, 25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    context: context,
                    builder: (context) => const SelectRoomsAndGuests(),
                  );
                },
                child: const RoomsChild(),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextButton(
                  color: kPrimaryColor, width: width, text: 'Search')
            ],
          ),
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({super.key, required this.child, this.onTap});
  final Widget child;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: width,
            height: height / 15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black.withOpacity(0.1)),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: child),
          ),
        ],
      ),
    );
  }
}

class SearchChild extends StatelessWidget {
  const SearchChild({super.key, required this.cityName});
  final String cityName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.search,
          size: 18,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(cityName),
      ],
    );
  }
}

class PickDateChild extends StatelessWidget {
  const PickDateChild({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.date_range_rounded,
        ),
        SizedBox(
          width: 10,
        ),
        Text('Sat 30 Mar - Mon 01 Apr'),
      ],
    );
  }
}

class RoomsChild extends StatelessWidget {
  const RoomsChild({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.person,
        ),
        SizedBox(
          width: 10,
        ),
        Text('1 room . 2 adults . 0 children'),
      ],
    );
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class SelectRoomsAndGuests extends StatelessWidget {
  const SelectRoomsAndGuests({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectRoomsAndGuestsBody();
  }
}

class SelectRoomsAndGuestsBody extends StatelessWidget {
  const SelectRoomsAndGuestsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          top: 24,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 145, 143, 143),
                borderRadius: BorderRadius.circular(12)),
            height: 5,
            width: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select rooms and guests',
                style: Styles.textStyle22,
              ),
              SizedBox(
                height: 10,
              ),
              SelectRoomsAndGuestsItem(text: 'Rooms'),
              SizedBox(
                height: 20,
              ),
              SelectRoomsAndGuestsItem(text: 'Adults'),
              SizedBox(
                height: 20,
              ),
              SelectRoomsAndGuestsItem(text: 'Chidren'),
            ],
          ),
        ]),
      ),
    );
  }
}

class SelectRoomsAndGuestsItem extends StatelessWidget {
  const SelectRoomsAndGuestsItem({super.key, required this.text});
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
            borderColor: kPrimaryColor,
            borderWidth: 2,
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

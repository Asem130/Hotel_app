import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/constants.dart';
import 'package:hotels/core/utils/app_router.dart';
import 'package:hotels/core/widgets/custom_text_button.dart';
import 'package:hotels/features/home/presentation/views/widgets/show_custom_data_picker.dart';

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
                onTap: () async {
                  await showDatePicker(
                      se
                      context: context,
                      initialDate: now,
                      firstDate: firstTime,
                      lastDate: DateTime(now.year, 10, 1));
                },
                child: const PickDateChild(),
              ),
              const SizedBox(
                height: 15,
              ),
              const Item(
                child: RoomsChild(),
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

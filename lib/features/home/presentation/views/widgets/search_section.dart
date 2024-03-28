import 'package:flutter/material.dart';
import 'package:hotels/constants.dart';
import 'package:hotels/core/widgets/custom_text_button.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Item(
                child: SearchChild(),
              ),
              const SizedBox(
                height: 15,
              ),
              const Item(
                child: PickDateChild(),
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
                  color: kPrimaryColr, width: width, text: 'Search')
            ],
          ),
        ),
      ),
    );
  }
}
class Item extends StatelessWidget {
  const Item({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
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
    );
  }
}



class SearchChild extends StatelessWidget {
  const SearchChild({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.search,
          size: 18,
        ),
        SizedBox(
          width: 10,
        ),
        Text('London'),
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
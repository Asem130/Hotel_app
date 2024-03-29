import 'package:flutter/material.dart';
import 'package:hotels/constants.dart';
import 'package:hotels/core/utils/styles.dart';
import 'package:hotels/core/widgets/custom_text_field.dart';

class DestinationView extends StatelessWidget {
  const DestinationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: DestinationBody(),
      ),
    );
  }
}

class DestinationBody extends StatelessWidget {
  const DestinationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          CustomTextField(
            color: kPrimaryColr,
            prefixIcon: const Icon(Icons.arrow_back),
            hintText: 'Enter destination',
            onChanged: (value) {},
          ),
          const Expanded(child: DestinationList()),
        ],
      ),
    );
  }
}

class DestinationItem extends StatelessWidget {
  const DestinationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: kPrimaryColr.withOpacity(0.3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/3.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'London',
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                'aderss ok dsadq cde',
                style: Styles.textStyle16
                    .copyWith(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DestinationList extends StatelessWidget {
  const DestinationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: DestinationItem(),
      ),
      itemCount: 10,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hotels/core/utils/styles.dart';

class Seperator
 extends StatelessWidget {
  const Seperator
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.grey,
          height: 1,
          width: MediaQuery.of(context).size.width / 3,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Or',
            style: Styles.textStyle18.copyWith(color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey,
          height: 1,
          width: MediaQuery.of(context).size.width / 3,
        ),
      ],
    );
  }
}

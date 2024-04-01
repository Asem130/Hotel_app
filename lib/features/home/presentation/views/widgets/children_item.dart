import 'package:flutter/material.dart';
import 'package:hotels/core/utils/styles.dart';

class ChildrenBotton extends StatelessWidget {
  const ChildrenBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Children',
          style: Styles.textStyle18,
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.black, width: 1),
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.circular(5),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                  splashColor: Colors.transparent,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove,
                    color: Color.fromARGB(255, 0, 0, 0),
                  )),
              const SizedBox(
                width: 20,
              ),
              const Text(
                '0',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 0, 0, 0),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}

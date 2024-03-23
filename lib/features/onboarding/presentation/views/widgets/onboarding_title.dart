import 'package:flutter/material.dart';
import 'package:hotels/core/utils/styles.dart';

class OnBoardingTitle extends StatelessWidget {
  const OnBoardingTitle(
      {super.key, required this.title, required this.supTitle});
  final String title;
  final String supTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Text(
            title,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: Styles.textStyle40.copyWith(
                color:
                    const Color.fromARGB(255, 255, 255, 255).withOpacity(0.9)),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            supTitle,
            style: Styles.textStyle16.copyWith(
              color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}

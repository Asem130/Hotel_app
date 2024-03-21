import 'package:flutter/material.dart';
import 'package:hotels/core/utils/styles.dart';

class OnBoardingTitle extends StatelessWidget {
  const OnBoardingTitle(
      {super.key, required this.title, required this.supTitle});
  final String title;
  final String supTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          maxLines: 2,
          textAlign: TextAlign.center,
          style:
              Styles.textStyle48.copyWith(color: Colors.white.withOpacity(0.9)),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          supTitle,
          style: Styles.textStyle20.copyWith(
            color: Colors.white.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}

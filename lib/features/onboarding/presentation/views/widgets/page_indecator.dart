import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndector extends StatelessWidget {
  const PageIndector(
      {super.key, required this.controller, required this.onBoardingItem});
  final PageController controller;
  final List<Widget> onBoardingItem;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: onBoardingItem.length,
      effect: const ExpandingDotsEffect(
          dotColor: Color.fromARGB(255, 210, 200, 200),
          dotHeight: 10,
          dotWidth: 10,
          spacing: 5,
          expansionFactor: 3,
          activeDotColor: Color.fromARGB(255, 75, 34, 225)),
    );
  }
}

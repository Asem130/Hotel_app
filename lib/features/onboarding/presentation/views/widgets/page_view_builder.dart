import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hotels/constants.dart';
import 'package:hotels/features/onboarding/presentation/views/widgets/onboarding_title.dart';
import 'package:hotels/features/onboarding/presentation/views/widgets/page_indecator.dart';

class PageViewBuilder extends StatefulWidget {
  const PageViewBuilder({super.key});

  @override
  State<PageViewBuilder> createState() => _PageViewBuilderState();
}

class _PageViewBuilderState extends State<PageViewBuilder> {
  PageController controller = PageController();
  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    List<Widget> onBoardingItem = [
      onBoardingFirstItem(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
      onBoardingSecondItem(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
      ),
      onBoardingThirdItem(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
      ),
    ];

    return Stack(
      children: [
        PageView.builder(
          onPageChanged: (index) {
            if (index == onBoardingItem.length - 1) {
              setState(() {
                isLast = false;
              });
            } else {
              setState(() {
                isLast = true;
              });
            }
          },
          controller: controller,
          itemBuilder: ((context, index) => onBoardingItem[index]),
          itemCount: kOnBoardingImage.length,
        ),
        Positioned(
            left: 30,
            bottom: 30,
            child: PageIndector(
                controller: controller, onBoardingItem: onBoardingItem))
      ],
    );
  }
}

Widget onBoardingFirstItem({required double width, required double height}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(children: [
        Image.asset(
          width: width,
          height: height,
          fit: BoxFit.cover,
          kOnBoardingImage[2],
        ),
        Positioned(
          bottom: height / 3,
          left: 30,
          right: 30,
          child: const OnBoardingTitle(
            title: 'Explore your favorite journey',
            supTitle: 'let\'s make our life so life',
          ),
        ),
      ]),
    ],
  );
}

Widget onBoardingSecondItem({required double width, required double height}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(children: [
        Image.asset(
          width: width,
          height: height,
          fit: BoxFit.cover,
          kOnBoardingImage[0],
        ),
        Positioned(
            bottom: 0,
            child: Container(
              height: 15,
              width: width,
              decoration:  BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.080),
                    Colors.white.withOpacity(0.1),
                    Colors.white.withOpacity(0.3),
                    Colors.white.withOpacity(1),
                  ],
                ),
              ),
            )),
      ]),
    ],
  );
}

Widget onBoardingThirdItem({required double width, required double height}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(children: [
        Image.asset(
          width: width,
          height: height,
          fit: BoxFit.cover,
          kOnBoardingImage[0],
        ),
        Positioned(
          bottom: height / 3,
          left: 30,
          right: 30,
          child: const OnBoardingTitle(
            title: 'Explore your favorite journey',
            supTitle: 'let\'s make our life so life',
          ),
        ),
      ]),
    ],
  );
}

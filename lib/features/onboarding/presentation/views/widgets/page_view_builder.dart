import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/constants.dart';
import 'package:hotels/core/utils/app_router.dart';
import 'package:hotels/core/utils/styles.dart';
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
        height: MediaQuery.of(context).size.height / 1.8,
      ),
      onBoardingThirdItem(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.8,
      ),
    ];

    return Stack(
      children: [
        PageView.builder(
          onPageChanged: (index) {
            if (index == onBoardingItem.length - 1) {
              setState(() {
                isLast = true;
              });
            } else {
              setState(() {
                isLast = false;
              });
            }
          },
          controller: controller,
          itemBuilder: ((context, index) => onBoardingItem[index]),
          itemCount: kOnBoardingImage.length,
        ),
        Positioned(
          left: 30,
          bottom: 60,
          child: PageIndector(
              controller: controller, onBoardingItem: onBoardingItem),
        ),
        Positioned(
          right: 30,
          bottom: 40,
          child: SizedBox(
            width: 100,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 75, 34, 225),
              ),
              onPressed: () {
                if (isLast == true) {
                  GoRouter.of(context).go(AppRouter.kRigester);
                } else {
                  setState(() {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 750),
                        curve: Curves.easeOutSine);
                  });
                }
              },
              child: isLast
                  ? Text(
                      'Get start',
                      style: Styles.textStyle16.copyWith(color: Colors.white),
                    )
                  : Text(
                      'Next',
                      style: Styles.textStyle16.copyWith(color: Colors.white),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget onBoardingFirstItem({required double width, required double height}) {
  return Column(
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
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset(
            width: width,
            height: height,
            fit: BoxFit.cover,
            kOnBoardingImage[0],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Center(
          child: Text(
            'Book a flight',
            style: Styles.textStyle22,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Center(
          child: Text(
            textAlign: TextAlign.center,
            'Found the flight that matches your destination and schedule? Book it  instanty',
            style: Styles.textStyle16,
          ),
        ),
      ],
    ),
  );
}

Widget onBoardingThirdItem({required double width, required double height}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset(
            width: width,
            height: height,
            fit: BoxFit.cover,
            kOnBoardingImage[1],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Center(
          child: Text(
            'Enjoy your trip',
            style: Styles.textStyle22,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Center(
          child: Text(
            textAlign: TextAlign.center,
            'Easy discovering new paces and share these between your friends and travel together',
            style: Styles.textStyle16,
          ),
        ),
      ],
    ),
  );
}

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget), (route) => false);

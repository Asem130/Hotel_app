import 'package:flutter/material.dart';
import 'package:hotels/core/widgets/custom_painter.dart';
import 'package:widget_mask/widget_mask.dart';

class RegisterBackgroundWidget extends StatelessWidget {
  const RegisterBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WidgetMask(
          blendMode: BlendMode.srcATop,
          childSaveLayer: true,
          mask: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
                colors: [
                  Color.fromARGB(255, 91, 104, 225),
                  Color.fromARGB(255, 139, 128, 172),
                  Color.fromARGB(255, 184, 95, 201),
                  Color.fromARGB(255, 33, 20, 81),
                ],
              ),
            ),
          ),
          child: CustomPaint(
            size: Size(
              MediaQuery.of(context).size.width,
              (MediaQuery.of(context).size.height).toDouble(),
            ),
            //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: BackgroungColor1(),
          ),
        ),
        WidgetMask(
          blendMode: BlendMode.srcATop,
          childSaveLayer: true,
          mask: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
                colors: [
                  Color.fromARGB(255, 79, 54, 168),
                  Color.fromARGB(255, 109, 85, 196),
                  Color.fromARGB(255, 88, 59, 193),
                  Color.fromARGB(255, 33, 20, 81),
                ],
              ),
            ),
          ),
          child: CustomPaint(
            size: Size(
                MediaQuery.of(context).size.width,
                (MediaQuery.of(context).size.height)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: BackgroungColor(),
          ),
        ),
      ],
    );
  }
}

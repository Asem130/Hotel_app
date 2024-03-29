import 'package:flutter/material.dart';
import 'package:hotels/core/utils/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      this.onTap,
      required this.text,
      required this.color,
      required this.width});
  final void Function()? onTap;
  final String text;
  final Color color;
  final double width;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: onTap,
      child: Container(
        width: width,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
//const Color.fromRGBO(117, 55, 159, 1)

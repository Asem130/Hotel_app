import 'package:flutter/material.dart';
import 'package:hotels/core/utils/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, this.onTap, required this.text});
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width/1.5,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(117, 55, 159, 1),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Text(text,style: Styles.textStyle16.copyWith(color: Colors.white),),
        ),
      ),
    );
  }
}

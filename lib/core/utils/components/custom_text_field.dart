import 'package:flutter/material.dart';
import 'package:hotels/constants.dart';
import 'package:hotels/core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
  });
  final String hintText;
  final Widget icon;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColr,
      validator: (data) {
        if (data!.isEmpty) {
          return 'This feild must be not empty';
        }
      },
      style: const TextStyle(
        color: Color.fromARGB(
          255,
          0,
          0,
          0,
        ),
      ),
      onChanged: onChanged,
      decoration: InputDecoration(
        errorStyle: Styles.textStyle18
            .copyWith(color: const Color.fromARGB(255, 156, 10, 0)),
        filled: true,
        fillColor: Colors.white,
        suffixIcon: icon,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 175, 175, 175),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(width: 0, color: Colors.white),
        ),
      ),
    );
  }
}

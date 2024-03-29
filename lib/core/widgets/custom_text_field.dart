import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    required this.onChanged,
    this.prefixIcon,
    this.isFill = false,
    this.color = Colors.white,
    this.width = 1,
  });
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String) onChanged;
  final bool isFill;
  final Color color;
  final double width;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return 'This feild must be not empty';
        }
      },
      style: const TextStyle(color: Colors.white),
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: isFill,
        fillColor: const Color.fromARGB(255, 240, 240, 240),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 175, 175, 175),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: color),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: color, width: width),
        ),
      ),
    );
  }
}

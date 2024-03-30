import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    required this.onChanged,
    this.prefixIcon,
    this.isFill = false,
    this.color = Colors.white,
    this.width = 1,
    this.textColor = Colors.white,
    this.controller,
  });
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String) onChanged;
  final bool isFill;
  final Color color;
  final double width;
  final Color textColor;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (data) {
        if (data!.isEmpty) {
          return 'This feild must be not empty';
        }
      },
      style: TextStyle(color: textColor),
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

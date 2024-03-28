import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    required this.onChanged,
    this.prefixIcon,
    this.isFill = false,
  });
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String) onChanged;
  final bool isFill;
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
        fillColor: Color.fromARGB(255, 240, 240, 240),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 175, 175, 175),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}

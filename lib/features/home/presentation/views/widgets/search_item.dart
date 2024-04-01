import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key, this.onTap, required this.text, required this.icon,});
  final String text;
  final void Function()? onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height / 16,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.black.withOpacity(0.1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
      children: [
         Icon(
      icon,
          size: 18,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(text),
      ],
    )
        ),
      ),
    );
  }
}

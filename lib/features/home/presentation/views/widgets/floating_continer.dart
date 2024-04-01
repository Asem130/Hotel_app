import 'package:flutter/material.dart';

class FloatingContiner extends StatelessWidget {
  const FloatingContiner({
    super.key,
    required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height / 3,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(24),
      ),
      child: widget,
    );
  }
}

import 'package:flutter/material.dart';

class CustomSmallOvalContainer extends StatelessWidget {
  const CustomSmallOvalContainer({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      padding: const EdgeInsets.all(8),
      decoration: const ShapeDecoration(
        color: Color(0xFFF3F5F7),
        shape: OvalBorder(),
      ),
      child: widget,
    );
  }
}

import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(color: Color(0xFFDCDEDE))),
        SizedBox(width: 18),
        Text("أو"),
        SizedBox(width: 18),
        Expanded(child: Divider(color: Color(0xFFDCDEDE))),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class MyOrdersViewItemDetails extends StatelessWidget {
  const MyOrdersViewItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(width: 5, color: Colors.red)),
      ),
      child: Column(children: []),
    );
  }
}

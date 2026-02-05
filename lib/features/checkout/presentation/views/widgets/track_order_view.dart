import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/track_order_header.dart';
import 'package:flutter/material.dart';

class TrackOrderView extends StatelessWidget {
  const TrackOrderView({super.key});

  static const String routeName = "TrackOrderView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context, title: "تتبع الطلب"),
      body: const SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Column(children: [TrackOrderHeader()]),
        ),
      ),
    );
  }
}

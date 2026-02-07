import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../utils/assets.dart';
import '../utils/styles.dart';

void showFalseSnackBar(BuildContext context, {required String errorMessage}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      elevation: 0,
      backgroundColor: Colors.white,
      content: Row(
        children: [
          SvgPicture.asset(Assets.assetsImagesTrueCircleContainer),
          const SizedBox(width: 12),
          Text(
            errorMessage,
            style: AppStyles.regular13.copyWith(color: Colors.black),
          ),
        ],
      ),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(
        vertical: 7,
        horizontal: kHorizontalPadding,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      duration: const Duration(seconds: 3),
    ),
  );
}

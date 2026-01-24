import 'package:ecommerce_app/core/helper/get_user.dart';
import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/notification_container.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Padding(
        padding: const EdgeInsets.all(4),
        child: SizedBox(
          width: 48,
          height: 48,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              Assets.assetsImagesProfileImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      title: Text(
        "صباح الخير !..",
        style: TextStyles.regular16.copyWith(
          color: ColorData.kFontSecondaryColor,
        ),
      ),
      subtitle: Text(getUser()?.name ?? 'Guest', style: TextStyles.bold16),
      trailing: const NotificationContainer(),
    );
  }
}

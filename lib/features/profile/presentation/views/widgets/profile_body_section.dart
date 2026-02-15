import 'package:ecommerce_app/core/models/list_tile_model.dart';
import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProfileBodySection extends StatelessWidget {
  const ProfileBodySection({super.key});
  static final List<ListTileModel> listTileItems = [
    ListTileModel(
      title: "الملف الشخصي",
      trailing: Icon(
        Iconsax.user_copy,
        size: 20,
        color: ColorData.kPrimaryColor,
      ),
      leading: const Icon(Icons.arrow_forward_ios, size: 20),
    ),
    ListTileModel(
      title: "طلباتي",
      trailing: Icon(
        Iconsax.box_1_copy,
        size: 20,
        color: ColorData.kPrimaryColor,
      ),
      leading: const Icon(Icons.arrow_forward_ios, size: 20),
    ),
    ListTileModel(
      title: "طلباتي",
      trailing: Icon(
        Iconsax.box_1_copy,
        size: 20,
        color: ColorData.kPrimaryColor,
      ),
      leading: const Icon(Icons.arrow_forward_ios, size: 20),
    ),
    ListTileModel(
      title: "طلباتي",
      trailing: Icon(
        Iconsax.box_1_copy,
        size: 20,
        color: ColorData.kPrimaryColor,
      ),
      leading: const Icon(Icons.arrow_forward_ios, size: 20),
    ),
    ListTileModel(
      title: "طلباتي",
      trailing: Icon(
        Iconsax.box_1_copy,
        size: 20,
        color: ColorData.kPrimaryColor,
      ),
      leading: const Icon(Icons.arrow_forward_ios, size: 20),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'عام',
            style: AppStyles.semiBold13.copyWith(
              color: const Color(0xFF0C0D0D),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Column(
              children: List.generate(
                listTileItems.length,
                (index) => ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    listTileItems[index].title,
                    style: AppStyles.bold13.copyWith(
                      color: const Color(0xFF949D9E),
                    ),
                  ),
                  leading: listTileItems[index].trailing,
                  trailing: listTileItems[index].leading,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

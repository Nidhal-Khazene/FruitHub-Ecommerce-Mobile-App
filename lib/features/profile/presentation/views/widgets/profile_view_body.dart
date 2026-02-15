import 'package:ecommerce_app/features/profile/presentation/views/widgets/profile_body_section.dart';
import 'package:ecommerce_app/features/profile/presentation/views/widgets/profile_header.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ProfileHeader(), SizedBox(height: 16), ProfileBodySection()],
    );
  }
}

import 'package:ecommerce_app/core/helper_functions/app_bar_builder.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = "/LoginView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "تسجيل دخول"),
      body: const LoginViewBody(),
    );
  }
}

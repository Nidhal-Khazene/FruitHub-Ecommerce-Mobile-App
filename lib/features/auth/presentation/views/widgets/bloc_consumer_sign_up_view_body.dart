import 'package:ecommerce_app/features/auth/presentation/manager/cubits/sign_up_cubit.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class BlocConsumerSignUpViewBody extends StatelessWidget {
  const BlocConsumerSignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignUpLoading ? true : false,
          child: const SignUpViewBody(),
        );
      },
      listener: (context, state) {
        if (state is SignUpFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
    );
  }
}

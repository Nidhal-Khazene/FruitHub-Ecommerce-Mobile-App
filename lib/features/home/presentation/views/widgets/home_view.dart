import 'package:ecommerce_app/core/cubits/products_cubit/products_cubit.dart';
import 'package:ecommerce_app/core/repos/products_repo/products_repo.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/services/service_locator.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(getIt<ProductsRepo>()),
      child: const HomeViewBody(),
    );
  }
}

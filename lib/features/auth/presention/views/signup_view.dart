import 'package:flutter/material.dart';
import 'package:fruit_hub/core/services/get_it_services.dart';
import 'package:fruit_hub/features/auth/domain/reops/auth_repo.dart';
import 'package:fruit_hub/features/auth/presention/views/widgets/signup_view_body_bloc_consumer.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/signup_cubit/signup_cubit.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SignupCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: const BuildAppBar(
          title: 'حساب جديد',
        ),
        body: const SignupViewBodyBlocConsumer(),
      ),
    );
  }
}



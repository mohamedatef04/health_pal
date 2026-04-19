import 'package:doc_appointment_app/core/shared/cubits/cubit/logout_cubit.dart';
import 'package:doc_appointment_app/core/widgets/custom_elevated_button.dart';
import 'package:doc_appointment_app/features/auth/presentation/views/get_started_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogoutCubit, LogoutState>(
      listener: (context, state) {
        if (state is LogoutSuccess) {
          context.go(GetStartedView.routeName);
        } else if (state is LogoutFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage)),
          );
        }
      },
      builder: (context, state) {
        return CustomElevatedButton(
          isLoading: state is LogoutLoading,
          text: 'Logout',
          onPressed: () {
            context.read<LogoutCubit>().logout();
          },
        );
      },
    );
  }
}

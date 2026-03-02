import 'package:doc_appointment_app/core/DI/get_it.dart';
import 'package:doc_appointment_app/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:doc_appointment_app/features/auth/presentation/cubits/sign_in/sign_in_cubit.dart';
import 'package:doc_appointment_app/features/auth/presentation/views/doctor_register_view.dart';
import 'package:doc_appointment_app/features/auth/presentation/views/get_started_view.dart';
import 'package:doc_appointment_app/features/auth/presentation/views/login_view.dart';
import 'package:doc_appointment_app/features/auth/presentation/views/patient_register_view.dart';
import 'package:doc_appointment_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      path: GetStartedView.routeName,
      builder: (context, state) => const GetStartedView(),
    ),
    GoRoute(
      path: LoginView.routeName,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<SignInCubit>(),
        child: LoginView(
          role: state.uri.queryParameters['role'] ?? 'patient',
        ),
      ),
    ),
    GoRoute(
      path: PatientRegisterView.routeName,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<RegisterCubit>(),
        child: const PatientRegisterView(),
      ),
    ),
    GoRoute(
      path: DoctorRegisterView.routeName,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<RegisterCubit>(),
        child: const DoctorRegisterView(),
      ),
    ),
  ],
);

import 'package:doc_appointment_app/core/DI/get_it.dart';
import 'package:doc_appointment_app/features/auth/presentation/cubits/check_role/check_role_cubit.dart';
import 'package:doc_appointment_app/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:doc_appointment_app/features/auth/presentation/cubits/sign_in/sign_in_cubit.dart';
import 'package:doc_appointment_app/features/auth/presentation/views/doctor_register_view.dart';
import 'package:doc_appointment_app/features/auth/presentation/views/get_started_view.dart';
import 'package:doc_appointment_app/features/auth/presentation/views/login_view.dart';
import 'package:doc_appointment_app/features/auth/presentation/views/patient_register_view.dart';
import 'package:doc_appointment_app/features/doctor/home/presentation/screens/doctor_home_screen.dart';
import 'package:doc_appointment_app/features/doctor/home/presentation/screens/root_doctor_home_screen.dart';
import 'package:doc_appointment_app/features/doctor/profile/presentation/screens/doctor_profile_screen.dart';
import 'package:doc_appointment_app/features/doctor/schedule/presentation/screens/doctor_appointments_screen.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/cubits/cubit/nav_bar_cubit.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/screens/book_appointment_screen.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/screens/category_screen.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/screens/doctor_details_screen.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/screens/patient_home_screen.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/screens/root_patient_home_view.dart';
import 'package:doc_appointment_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:doc_appointment_app/features/patient/profile/presentation/screens/notifications_screen.dart';
import 'package:doc_appointment_app/features/patient/profile/presentation/screens/patient_profile_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    //* Onboarding
    GoRoute(
      path: '/',
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<CheckRoleCubit>(),
        child: const OnboardingView(),
      ),
    ),
    //* Auth
    GoRoute(
      path: GetStartedView.routeName,
      builder: (context, state) => const GetStartedView(),
    ),
    GoRoute(
      path: LoginView.routeName,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<SignInCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<CheckRoleCubit>(),
          ),
        ],
        child: const LoginView(),
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
    //* Patient
    GoRoute(
      path: RootPatientHomeView.routeName,
      builder: (context, state) => BlocProvider(
        create: (context) => NavBarCubit(),
        child: const RootPatientHomeView(),
      ),
    ),

    GoRoute(
      path: PatientHomeScreen.routeName,
      builder: (context, state) => const PatientHomeScreen(),
    ),
    GoRoute(
      path: PatientProfileScreen.routeName,
      builder: (context, state) => const PatientProfileScreen(),
    ),
    GoRoute(
      path: NotificationsScreen.routeName,
      builder: (context, state) => const NotificationsScreen(),
    ),
    GoRoute(
      path: CategoryScreen.routeName,
      builder: (context, state) => const CategoryScreen(),
    ),
    GoRoute(
      path: DoctorDetailsScreen.routeName,
      builder: (context, state) => const DoctorDetailsScreen(),
    ),
    GoRoute(
      path: BookAppointmentScreen.routeName,
      builder: (context, state) => const BookAppointmentScreen(),
    ),
    //* Doctor
    GoRoute(
      path: RootDoctorHomeScreen.routeName,
      builder: (context, state) => BlocProvider(
        create: (context) => NavBarCubit(),
        child: const RootDoctorHomeScreen(),
      ),
    ),
    GoRoute(
      path: DoctorHomeScreen.routeName,
      builder: (context, state) => const DoctorHomeScreen(),
    ),
    GoRoute(
      path: DoctorAppointmentsScreen.routeName,
      builder: (context, state) => const DoctorAppointmentsScreen(),
    ),
    GoRoute(
      path: DoctorProfileScreen.routeName,
      builder: (context, state) => const DoctorProfileScreen(),
    ),
  ],
);

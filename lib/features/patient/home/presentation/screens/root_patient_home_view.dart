import 'package:doc_appointment_app/core/DI/get_it.dart';
import 'package:doc_appointment_app/core/shared/cubits/cubit/logout_cubit.dart';
import 'package:doc_appointment_app/core/widgets/custom_patient_nav_bar.dart';
import 'package:doc_appointment_app/features/patient/booking/presentation/screens/booking_history_screen.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/cubits/cubit/nav_bar_cubit.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/screens/patient_home_screen.dart';
import 'package:doc_appointment_app/features/patient/profile/presentation/screens/patient_profile_screen.dart';
import 'package:doc_appointment_app/features/patient/wishlist/presentation/screens/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootPatientHomeView extends StatefulWidget {
  const RootPatientHomeView({super.key});
  static const String routeName = '/root_patient_home_view';

  @override
  State<RootPatientHomeView> createState() => _RootPatientHomeViewState();
}

class _RootPatientHomeViewState extends State<RootPatientHomeView> {
  final List<Widget> screens = [
    const PatientHomeScreen(),
    const BookingHistoryScreen(),
    const WishlistScreen(),
    BlocProvider(
      create: (context) => getIt<LogoutCubit>(),
      child: const PatientProfileScreen(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavBarCubit, NavBarState>(
      listener: (context, state) {
        if (state is NavBarChange) {}
      },
      builder: (context, state) {
        return Scaffold(
          body: screens[context.read<NavBarCubit>().currentIndex],
          bottomNavigationBar: const CustomPatientNavBar(),
        );
      },
    );
  }
}

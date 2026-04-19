import 'package:doc_appointment_app/core/widgets/custom_doctor_nav_bar.dart';
import 'package:doc_appointment_app/features/doctor/home/presentation/screens/doctor_home_screen.dart';
import 'package:doc_appointment_app/features/doctor/profile/presentation/screens/doctor_profile_screen.dart';
import 'package:doc_appointment_app/features/doctor/schedule/presentation/screens/doctor_appointments_screen.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/cubits/cubit/nav_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootDoctorHomeScreen extends StatefulWidget {
  const RootDoctorHomeScreen({super.key});
  static const String routeName = '/root_doctor_home_screen';

  @override
  State<RootDoctorHomeScreen> createState() => _RootDoctorHomeScreenState();
}

class _RootDoctorHomeScreenState extends State<RootDoctorHomeScreen> {
  final List<Widget> screens = [
    const DoctorHomeScreen(),
    const DoctorAppointmentsScreen(),
    const DoctorProfileScreen(),
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
          bottomNavigationBar: const CustomDoctorNavBar(),
        );
      },
    );
  }
}

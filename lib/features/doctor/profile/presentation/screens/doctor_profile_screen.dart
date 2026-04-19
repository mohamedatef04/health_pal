import 'package:doc_appointment_app/core/DI/get_it.dart';
import 'package:doc_appointment_app/core/shared/cubits/cubit/logout_cubit.dart';
import 'package:doc_appointment_app/features/doctor/profile/presentation/widgets/contact_info_card.dart';
import 'package:doc_appointment_app/features/doctor/profile/presentation/widgets/doctor_profile_info.dart';
import 'package:doc_appointment_app/features/doctor/profile/presentation/widgets/doctor_status_row.dart';
import 'package:doc_appointment_app/features/doctor/profile/presentation/widgets/logout_widget.dart';
import 'package:doc_appointment_app/features/doctor/schedule/presentation/widgets/schedule_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({super.key});
  static const String routeName = '/doctor_profile_screen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LogoutCubit>(),
      child: Scaffold(
        backgroundColor: const Color(0xFFF8F9FB),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 16.h,
                  ),
                  child: const ScheduleHeader(),
                ),
                SizedBox(height: 32.h),
                const DoctorProfileInfo(),
                SizedBox(height: 24.h),
                const DoctorStatusRow(),
                SizedBox(height: 48.h),
                const ContactInfoCard(),
                SizedBox(height: 24.h),
                const LogoutWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:doc_appointment_app/features/doctor/home/presentation/widgets/appointments_section_header.dart';
import 'package:doc_appointment_app/features/doctor/home/presentation/widgets/doctor_appointment_card.dart';
import 'package:doc_appointment_app/features/doctor/home/presentation/widgets/doctor_header.dart';
import 'package:doc_appointment_app/features/doctor/home/presentation/widgets/doctor_summary_cards.dart';
import 'package:doc_appointment_app/features/doctor/home/presentation/widgets/view_full_schedule_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({super.key});
  static const String routeName = '/doctor_home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: EdgeInsets.all(24.r),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  const DoctorHeader(),
                  SizedBox(height: 32.h),
                  const DoctorSummaryCards(),
                  SizedBox(height: 32.h),
                  const ViewScheduleButton(),
                  SizedBox(height: 48.h),
                  const AppointmentsSectionHeader(),
                  SizedBox(height: 16.h),
                ]),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              sliver: SliverList.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const DoctorAppointmentCard();
                },
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 100.h)),
          ],
        ),
      ),
    );
  }
}

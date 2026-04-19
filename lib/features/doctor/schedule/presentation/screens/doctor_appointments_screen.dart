import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:doc_appointment_app/features/doctor/schedule/presentation/widgets/schedule_header.dart';
import 'package:doc_appointment_app/features/doctor/schedule/presentation/widgets/daily_appointments_header.dart';
import 'package:doc_appointment_app/features/doctor/schedule/presentation/widgets/schedule_appointment_card.dart';
import 'package:doc_appointment_app/features/doctor/schedule/presentation/widgets/schedule_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorAppointmentsScreen extends StatelessWidget {
  const DoctorAppointmentsScreen({super.key});
  static const String routeName = '/doctor_appointments_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ScheduleHeader(),
                    SizedBox(height: 32.h),
                    Text(
                      'My Schedule',
                      style: AppTextStyles.interBold.copyWith(
                        fontSize: 48.sp,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Text(
                      'OCTOBER 2023',
                      style: AppTextStyles.semiBold14.copyWith(
                        color: AppColors.lightGreyColor,
                        letterSpacing: 1.5,
                      ),
                    ),
                    SizedBox(height: 32.h),
                    const ScheduleCalendar(),
                    SizedBox(height: 32.h),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: DailyAppointmentsHeader(),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              sliver: SliverList.builder(
                itemBuilder: (context, index) {
                  return const ScheduleAppointmentCard();
                },
                itemCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

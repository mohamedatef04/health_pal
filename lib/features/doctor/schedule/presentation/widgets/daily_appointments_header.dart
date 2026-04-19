import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DailyAppointmentsHeader extends StatelessWidget {
  const DailyAppointmentsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              'Daily Appointments',
              style: AppTextStyles.bold18.copyWith(
                color: AppColors.primaryColor,
                fontSize: 22.sp,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
              decoration: BoxDecoration(
                color: const Color(0xFFE8F5E9),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Text(
                '4 SLOTS REMAINING',
                textAlign: TextAlign.center,
                style: AppTextStyles.bold12.copyWith(
                  color: Colors.green.shade800,
                  fontSize: 10.sp,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

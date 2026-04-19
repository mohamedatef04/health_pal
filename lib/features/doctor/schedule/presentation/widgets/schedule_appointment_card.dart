import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusBadge extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const StatusBadge({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        text.toUpperCase(),
        style: AppTextStyles.bold12.copyWith(color: textColor, fontSize: 10.sp),
      ),
    );
  }
}

class ScheduleAppointmentCard extends StatelessWidget {
  const ScheduleAppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      padding: EdgeInsets.all(20.r),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(24.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withValues(alpha: 0.03),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                '09:00',
                style: AppTextStyles.bold18.copyWith(
                  color: AppColors.blueColor,
                ),
              ),
              Text(
                'AM',
                style: AppTextStyles.semiBold12.copyWith(
                  color: AppColors.lightGreyColor,
                ),
              ),
            ],
          ),
          SizedBox(width: 20.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Eleanor Shellstrop',
                      style: AppTextStyles.bold18.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: AppColors.lightGreyColor,
                      size: 20.sp,
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.notes,
                      color: AppColors.lightGreyColor,
                      size: 14.sp,
                    ),
                    SizedBox(width: 8.w),
                    Flexible(
                      child: Text(
                        'Routine Checkup - Post surgery follow-up',
                        style: AppTextStyles.regular12.copyWith(
                          color: AppColors.lightGreyColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Wrap(
                  spacing: 8.w,
                  children: const [
                    StatusBadge(
                      text: 'IN-PERSON',
                      backgroundColor: Color(0xFFE3F2FD),
                      textColor: Color(0xFF1976D2),
                    ),
                    StatusBadge(
                      text: 'CONFIRMED',
                      backgroundColor: Color(0xFFE8F5E9),
                      textColor: Color(0xFF388E3C),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

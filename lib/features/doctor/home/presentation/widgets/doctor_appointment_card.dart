import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorAppointmentCard extends StatelessWidget {
  const DoctorAppointmentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.blueColor,
            radius: 30.r,
            child: Text(
              'E',
              style: AppTextStyles.bold18.copyWith(color: AppColors.whiteColor),
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Emma Watson',
                  style: AppTextStyles.bold18.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                SizedBox(height: 6.h),
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: AppColors.blueColor,
                      size: 18.sp,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      '11:30 AM',
                      style: AppTextStyles.bold16.copyWith(
                        color: AppColors.blueColor,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Text(
                      '• Vaccination',
                      style: AppTextStyles.regular16.copyWith(
                        color: AppColors.lightGreyColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              color: AppColors.lightGrey.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(
              Icons.arrow_forward_ios,
              size: 16.sp,
              color: AppColors.lightGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}

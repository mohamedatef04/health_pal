import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleHeader extends StatelessWidget {
  const ScheduleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20.r,
          backgroundColor: AppColors.whiteColor,
          child: Icon(Icons.medical_services, color: AppColors.blueColor, size: 24.sp),
        ),
        SizedBox(width: 12.w),
        Text(
          'Clinical Serenity',
          style: AppTextStyles.bold18.copyWith(color: AppColors.primaryColor),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_none, color: AppColors.blueColor, size: 28.sp),
        ),
      ],
    );
  }
}

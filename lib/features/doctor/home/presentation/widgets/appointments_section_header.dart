import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentsSectionHeader extends StatelessWidget {
  const AppointmentsSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Today\'s Appointments',
              style: AppTextStyles.interBold.copyWith(
                fontSize: 24.sp,
                color: AppColors.primaryColor,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'See all',
                style: AppTextStyles.bold16.copyWith(color: AppColors.blueColor),
              ),
            ),
          ],
        ),
        Text(
          'Wednesday, Oct 25',
          style: AppTextStyles.regular16.copyWith(color: AppColors.lightGreyColor),
        ),
      ],
    );
  }
}

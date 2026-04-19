import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkingTimeWidget extends StatelessWidget {
  const WorkingTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10.h,
      children: [
        const Text(
          'Working Time',
          style: AppTextStyles.semiBold20,
        ),
        Row(
          children: [
            Icon(
              Icons.access_time_filled,
              color: Theme.of(context).primaryColor,
              size: 20.sp,
            ),
            SizedBox(width: 8.w),
            const Text(
              'Monday-Friday, 08.00 AM - 18.00 PM',
              style: AppTextStyles.regular14,
            ),
          ],
        ),
      ],
    );
  }
}

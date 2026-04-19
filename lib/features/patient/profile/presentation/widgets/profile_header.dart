import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 65.r,
              backgroundImage: const NetworkImage(
                'https://img.freepik.com/free-photo/lifestyle-beauty-fashion-people-emotions-concept-young-optimistic-confident-businesswoman-with-fringe-smiling-looking-happy-success-reach-goal-standing-white-background_176420-53396.jpg',
              ),
            ),
            Container(
              padding: EdgeInsets.all(6.w),
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 20.sp,
              ),
            ),
          ],
        ),
        SizedBox(height: 15.h),
        const Text(
          'Daniel Martinez',
          style: AppTextStyles.bold18,
        ),
        SizedBox(height: 5.h),
        Text(
          '+123 856479683',
          style: AppTextStyles.regular14.copyWith(color: AppColors.greyColor),
        ),
      ],
    );
  }
}
